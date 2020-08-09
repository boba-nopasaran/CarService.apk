.class final Lorg/jsoup/parser/CharacterReader;
.super Ljava/lang/Object;
.source "CharacterReader.java"


# static fields
.field static final EOF:C = '\uffff'

.field private static final maxCacheLen:I = 0xc


# instance fields
.field private final input:[C

.field private final length:I

.field private mark:I

.field private pos:I

.field private final stringCache:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    array-length v0, v0

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    return-void
.end method

.method private cacheString(II)Ljava/lang/String;
    .locals 10

    iget-object v7, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    const/16 v8, 0xc

    if-le p2, v8, :cond_1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7, p1, p2}, Ljava/lang/String;-><init>([CII)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v2, 0x0

    move v5, p1

    const/4 v3, 0x0

    move v6, v5

    :goto_1
    if-ge v3, p2, :cond_2

    mul-int/lit8 v8, v2, 0x1f

    add-int/lit8 v5, v6, 0x1

    aget-char v9, v7, v6

    add-int v2, v8, v9

    add-int/lit8 v3, v3, 0x1

    move v6, v5

    goto :goto_1

    :cond_2
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    and-int v4, v2, v8

    aget-object v1, v0, v4

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7, p1, p2}, Ljava/lang/String;-><init>([CII)V

    aput-object v1, v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, v1}, Lorg/jsoup/parser/CharacterReader;->rangeEquals(IILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7, p1, p2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method


# virtual methods
.method advance()V
    .locals 1

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return-void
.end method

.method consume()C
    .locals 3

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-lt v1, v2, :cond_0

    const v0, 0xffff

    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return v0

    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v1, v2

    goto :goto_0
.end method

.method consumeAsString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method consumeData()Ljava/lang/String;
    .locals 5

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    :goto_0
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-ge v4, v1, :cond_0

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v3, v4

    const/16 v4, 0x26

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3c

    if-eq v0, v4, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-le v4, v2, :cond_2

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v4, v2

    invoke-direct {p0, v2, v4}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_1
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    :cond_2
    const-string v4, ""

    goto :goto_1
.end method

.method consumeDigitSequence()Ljava/lang/String;
    .locals 4

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v2, v3

    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v2, v1

    invoke-direct {p0, v1, v2}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method consumeHexSequence()Ljava/lang/String;
    .locals 4

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v2, v3

    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_2

    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x46

    if-le v0, v2, :cond_2

    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_3

    const/16 v2, 0x66

    if-gt v0, v2, :cond_3

    :cond_2
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v2, v1

    invoke-direct {p0, v1, v2}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method consumeLetterSequence()Ljava/lang/String;
    .locals 4

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v2, v3

    const/16 v2, 0x41

    if-lt v0, v2, :cond_0

    const/16 v2, 0x5a

    if-le v0, v2, :cond_1

    :cond_0
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_2

    :cond_1
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v2, v1

    invoke-direct {p0, v1, v2}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method consumeLetterThenDigitSequence()Ljava/lang/String;
    .locals 4

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v2, v3

    const/16 v2, 0x41

    if-lt v0, v2, :cond_0

    const/16 v2, 0x5a

    if-le v0, v2, :cond_1

    :cond_0
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_2

    :cond_1
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v2, v3

    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    const/16 v2, 0x39

    if-gt v0, v2, :cond_3

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_1

    :cond_3
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v2, v1

    invoke-direct {p0, v1, v2}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method consumeTagName()Ljava/lang/String;
    .locals 5

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    :goto_0
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-ge v4, v1, :cond_0

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v3, v4

    const/16 v4, 0x9

    if-eq v0, v4, :cond_0

    const/16 v4, 0xa

    if-eq v0, v4, :cond_0

    const/16 v4, 0xd

    if-eq v0, v4, :cond_0

    const/16 v4, 0xc

    if-eq v0, v4, :cond_0

    const/16 v4, 0x20

    if-eq v0, v4, :cond_0

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3e

    if-eq v0, v4, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-le v4, v2, :cond_2

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v4, v2

    invoke-direct {p0, v2, v4}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_1
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    :cond_2
    const-string v4, ""

    goto :goto_1
.end method

.method consumeTo(C)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(C)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-direct {p0, v2, v1}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-direct {p0, v2, v1}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method varargs consumeToAny([C)Ljava/lang/String;
    .locals 7

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    :goto_0
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-ge v3, v1, :cond_0

    array-length v4, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-char v0, p1, v3

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v5, v5, v6

    if-ne v5, v0, :cond_1

    :cond_0
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-le v3, v2, :cond_3

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v3, v2

    invoke-direct {p0, v2, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v3

    :goto_2
    return-object v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    :cond_3
    const-string v3, ""

    goto :goto_2
.end method

.method varargs consumeToAnySorted([C)Ljava/lang/String;
    .locals 4

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    :goto_0
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-ge v3, v0, :cond_0

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v3, v2, v3

    invoke-static {p1, v3}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v3

    if-ltz v3, :cond_1

    :cond_0
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-le v3, v1, :cond_2

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v3, v1

    invoke-direct {p0, v1, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    :cond_2
    const-string v3, ""

    goto :goto_1
.end method

.method consumeToEnd()Ljava/lang/String;
    .locals 4

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return-object v0
.end method

.method containsIgnoreCase(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, -0x1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v2

    if-gt v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v2

    if-le v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method current()C
    .locals 2

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-lt v0, v1, :cond_0

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method isEmpty()Z
    .locals 2

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mark()V
    .locals 1

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    return-void
.end method

.method matchConsume(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matchConsumeIgnoreCase(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matches(C)Z
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matches(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v5, v0

    aget-char v4, v4, v5

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method varargs matchesAny([C)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v3, v4

    array-length v4, p1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-char v1, p1, v3

    if-ne v1, v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method matchesAnySorted([C)Z
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matchesDigit()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v2, v3

    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method matchesIgnoreCase(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v5, v6

    if-le v1, v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v6, v0

    aget-char v5, v5, v6

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method matchesLetter()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v2, v3

    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method nextIndexOf(C)I
    .locals 2

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_0

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int v1, v0, v1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method nextIndexOf(Ljava/lang/CharSequence;)I
    .locals 7

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    :goto_0
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v5, v5, v3

    if-eq v4, v5, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v5, v5, v3

    if-ne v4, v5, :cond_0

    :cond_1
    add-int/lit8 v0, v3, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v5, v0

    add-int/lit8 v2, v5, -0x1

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v3, v5, :cond_3

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-gt v2, v5, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v6, v6, v0

    if-ne v5, v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int v5, v3, v5

    :goto_2
    return v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, -0x1

    goto :goto_2
.end method

.method pos()I
    .locals 1

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return v0
.end method

.method rangeEquals(IILjava/lang/String;)Z
    .locals 9

    const/4 v6, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-ne p2, v7, :cond_0

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    move v1, p1

    const/4 v3, 0x0

    move v4, v3

    move v2, v1

    move v0, p2

    :goto_0
    add-int/lit8 p2, v0, -0x1

    if-eqz v0, :cond_1

    add-int/lit8 v1, v2, 0x1

    aget-char v7, v5, v2

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_2

    :cond_0
    :goto_1
    return v6

    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    move v2, v1

    move v0, p2

    goto :goto_0
.end method

.method rewindToMark()V
    .locals 1

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method unconsume()V
    .locals 1

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return-void
.end method
