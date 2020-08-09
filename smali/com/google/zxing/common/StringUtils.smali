.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field private static final UTF8:Ljava/lang/String; = "UTF8"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    const-string v0, "SJIS"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EUC_JP"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v20, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    sget-object v20, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    :goto_0
    return-object v20

    :cond_0
    move-object/from16 v0, p0

    array-length v7, v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    const/16 v20, 0x0

    aget-byte v20, p0, v20

    const/16 v21, -0x11

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/16 v20, 0x1

    aget-byte v20, p0, v20

    const/16 v21, -0x45

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/16 v20, 0x2

    aget-byte v20, p0, v20

    const/16 v21, -0x41

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/16 v18, 0x1

    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_13

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-eqz v4, :cond_13

    :cond_1
    aget-byte v20, p0, v5

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    if-eqz v4, :cond_2

    if-lez v17, :cond_7

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_a

    add-int/lit8 v17, v17, -0x1

    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    const/16 v20, 0x7f

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    const/16 v20, 0xa0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    const/4 v2, 0x0

    :cond_3
    :goto_4
    if-eqz v3, :cond_5

    if-lez v8, :cond_e

    const/16 v20, 0x40

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    const/16 v20, 0x7f

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    const/16 v20, 0xfc

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_d

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    const/16 v18, 0x0

    goto :goto_1

    :cond_7
    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_2

    and-int/lit8 v20, v19, 0x40

    if-eqz v20, :cond_a

    add-int/lit8 v17, v17, 0x1

    and-int/lit8 v20, v19, 0x20

    if-nez v20, :cond_8

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v17, v17, 0x1

    and-int/lit8 v20, v19, 0x10

    if-nez v20, :cond_9

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v17, v17, 0x1

    and-int/lit8 v20, v19, 0x8

    if-nez v20, :cond_a

    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    goto :goto_3

    :cond_b
    const/16 v20, 0x9f

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    const/16 v20, 0xc0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_c

    const/16 v20, 0xd7

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    const/16 v20, 0xf7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_d
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_e
    const/16 v20, 0x80

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    const/16 v20, 0xa0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    const/16 v20, 0xef

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_10

    :cond_f
    const/4 v3, 0x0

    goto :goto_5

    :cond_10
    const/16 v20, 0xa0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_11

    const/16 v20, 0xe0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_11

    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x0

    add-int/lit8 v10, v10, 0x1

    if-le v10, v13, :cond_5

    move v13, v10

    goto/16 :goto_5

    :cond_11
    const/16 v20, 0x7f

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_12

    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x0

    add-int/lit8 v9, v9, 0x1

    if-le v9, v12, :cond_5

    move v12, v9

    goto/16 :goto_5

    :cond_12
    const/4 v10, 0x0

    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_13
    if-eqz v4, :cond_14

    if-lez v17, :cond_14

    const/4 v4, 0x0

    :cond_14
    if-eqz v3, :cond_15

    if-lez v8, :cond_15

    const/4 v3, 0x0

    :cond_15
    if-eqz v4, :cond_17

    if-nez v18, :cond_16

    add-int v20, v14, v15

    add-int v20, v20, v16

    if-lez v20, :cond_17

    :cond_16
    const-string v20, "UTF8"

    goto/16 :goto_0

    :cond_17
    if-eqz v3, :cond_19

    sget-boolean v20, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-nez v20, :cond_18

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ge v13, v0, :cond_18

    const/16 v20, 0x3

    move/from16 v0, v20

    if-lt v12, v0, :cond_19

    :cond_18
    const-string v20, "SJIS"

    goto/16 :goto_0

    :cond_19
    if-eqz v2, :cond_1d

    if-eqz v3, :cond_1d

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v13, v0, :cond_1a

    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v11, v0, :cond_1b

    :cond_1a
    mul-int/lit8 v20, v6, 0xa

    move/from16 v0, v20

    if-lt v0, v7, :cond_1c

    :cond_1b
    const-string v20, "SJIS"

    goto/16 :goto_0

    :cond_1c
    const-string v20, "ISO8859_1"

    goto/16 :goto_0

    :cond_1d
    if-eqz v2, :cond_1e

    const-string v20, "ISO8859_1"

    goto/16 :goto_0

    :cond_1e
    if-eqz v3, :cond_1f

    const-string v20, "SJIS"

    goto/16 :goto_0

    :cond_1f
    if-eqz v4, :cond_20

    const-string v20, "UTF8"

    goto/16 :goto_0

    :cond_20
    sget-object v20, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    goto/16 :goto_0
.end method
