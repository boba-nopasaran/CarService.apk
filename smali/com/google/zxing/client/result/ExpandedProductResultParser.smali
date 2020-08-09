.class public final Lcom/google/zxing/client/result/ExpandedProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ExpandedProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-eq v5, v6, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    add-int/lit8 v5, p0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v5, 0x29

    if-ne v1, v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/16 v5, 0x30

    if-lt v1, v5, :cond_0

    const/16 v5, 0x39

    if-gt v1, v5, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static findValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    .locals 23

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v3

    sget-object v22, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v22

    if-eq v3, v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    const/16 v20, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_4

    move/from16 v0, v20

    invoke-static {v0, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int v20, v20, v3

    move/from16 v0, v20

    invoke-static {v0, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v3

    add-int v20, v20, v3

    const/4 v3, -0x1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->hashCode()I

    move-result v22

    sparse-switch v22, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v3, :pswitch_data_0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :sswitch_0
    const-string v22, "00"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_1
    const-string v22, "01"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_2
    const-string v22, "10"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_3
    const-string v22, "11"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_4
    const-string v22, "13"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_5
    const-string v22, "15"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_6
    const-string v22, "17"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_7
    const-string v22, "3100"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_8
    const-string v22, "3101"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x8

    goto/16 :goto_2

    :sswitch_9
    const-string v22, "3102"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x9

    goto/16 :goto_2

    :sswitch_a
    const-string v22, "3103"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0xa

    goto/16 :goto_2

    :sswitch_b
    const-string v22, "3104"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0xb

    goto/16 :goto_2

    :sswitch_c
    const-string v22, "3105"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0xc

    goto/16 :goto_2

    :sswitch_d
    const-string v22, "3106"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0xd

    goto/16 :goto_2

    :sswitch_e
    const-string v22, "3107"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0xe

    goto/16 :goto_2

    :sswitch_f
    const-string v22, "3108"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0xf

    goto/16 :goto_2

    :sswitch_10
    const-string v22, "3109"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x10

    goto/16 :goto_2

    :sswitch_11
    const-string v22, "3200"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x11

    goto/16 :goto_2

    :sswitch_12
    const-string v22, "3201"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x12

    goto/16 :goto_2

    :sswitch_13
    const-string v22, "3202"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x13

    goto/16 :goto_2

    :sswitch_14
    const-string v22, "3203"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x14

    goto/16 :goto_2

    :sswitch_15
    const-string v22, "3204"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x15

    goto/16 :goto_2

    :sswitch_16
    const-string v22, "3205"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x16

    goto/16 :goto_2

    :sswitch_17
    const-string v22, "3206"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x17

    goto/16 :goto_2

    :sswitch_18
    const-string v22, "3207"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x18

    goto/16 :goto_2

    :sswitch_19
    const-string v22, "3208"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x19

    goto/16 :goto_2

    :sswitch_1a
    const-string v22, "3209"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x1a

    goto/16 :goto_2

    :sswitch_1b
    const-string v22, "3920"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x1b

    goto/16 :goto_2

    :sswitch_1c
    const-string v22, "3921"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x1c

    goto/16 :goto_2

    :sswitch_1d
    const-string v22, "3922"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x1d

    goto/16 :goto_2

    :sswitch_1e
    const-string v22, "3923"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x1e

    goto/16 :goto_2

    :sswitch_1f
    const-string v22, "3930"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x1f

    goto/16 :goto_2

    :sswitch_20
    const-string v22, "3931"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x20

    goto/16 :goto_2

    :sswitch_21
    const-string v22, "3932"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x21

    goto/16 :goto_2

    :sswitch_22
    const-string v22, "3933"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v3, 0x22

    goto/16 :goto_2

    :pswitch_0
    move-object/from16 v6, v21

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v5, v21

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v7, v21

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v8, v21

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v9, v21

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v10, v21

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v11, v21

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v12, v21

    const-string v13, "KG"

    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v12, v21

    const-string v13, "LB"

    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v15, v21

    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v3, v0, :cond_3

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const/4 v3, 0x0

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_4
    new-instance v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    invoke-direct/range {v3 .. v18}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x600 -> :sswitch_0
        0x601 -> :sswitch_1
        0x61f -> :sswitch_2
        0x620 -> :sswitch_3
        0x622 -> :sswitch_4
        0x624 -> :sswitch_5
        0x626 -> :sswitch_6
        0x17ecde -> :sswitch_7
        0x17ecdf -> :sswitch_8
        0x17ece0 -> :sswitch_9
        0x17ece1 -> :sswitch_a
        0x17ece2 -> :sswitch_b
        0x17ece3 -> :sswitch_c
        0x17ece4 -> :sswitch_d
        0x17ece5 -> :sswitch_e
        0x17ece6 -> :sswitch_f
        0x17ece7 -> :sswitch_10
        0x17f09f -> :sswitch_11
        0x17f0a0 -> :sswitch_12
        0x17f0a1 -> :sswitch_13
        0x17f0a2 -> :sswitch_14
        0x17f0a3 -> :sswitch_15
        0x17f0a4 -> :sswitch_16
        0x17f0a5 -> :sswitch_17
        0x17f0a6 -> :sswitch_18
        0x17f0a7 -> :sswitch_19
        0x17f0a8 -> :sswitch_1a
        0x180b24 -> :sswitch_1b
        0x180b25 -> :sswitch_1c
        0x180b26 -> :sswitch_1d
        0x180b27 -> :sswitch_1e
        0x180b43 -> :sswitch_1f
        0x180b44 -> :sswitch_20
        0x180b45 -> :sswitch_21
        0x180b46 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-result-object v0

    return-object v0
.end method
