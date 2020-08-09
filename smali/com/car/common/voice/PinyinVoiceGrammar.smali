.class public Lcom/car/common/voice/PinyinVoiceGrammar;
.super Ljava/lang/Object;
.source "PinyinVoiceGrammar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;,
        Lcom/car/common/voice/PinyinVoiceGrammar$Token;
    }
.end annotation


# static fields
.field private static final SystemGrammarFile:Ljava/lang/String; = "/system/etc/PinyinVoiceGrammar.conf"

.field private static final TAG:Ljava/lang/String; = "CarSvc_VoiceGrammar"

.field private static final mGrammarList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;",
            ">;"
        }
    .end annotation
.end field

.field static sFilterWords:[Ljava/lang/String;

.field public static sMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/car/common/voice/VoiceHelp$MyHelp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/car/common/voice/PinyinVoiceGrammar;->sMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/car/common/voice/PinyinVoiceGrammar;->mGrammarList:Ljava/util/ArrayList;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "leige"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ba"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "de"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "le"

    aput-object v2, v0, v1

    sput-object v0, Lcom/car/common/voice/PinyinVoiceGrammar;->sFilterWords:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createGrammar(Ljava/lang/String;)Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;
    .locals 15

    new-instance v9, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;

    invoke-direct {v9}, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;-><init>()V

    new-instance v10, Lcom/car/common/voice/PinyinVoiceGrammar$Token;

    invoke-direct {v10}, Lcom/car/common/voice/PinyinVoiceGrammar$Token;-><init>()V

    const-string v12, ":"

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v7, v2

    const/4 v12, 0x2

    if-ge v7, v12, :cond_0

    const-string v12, "CarSvc_VoiceGrammar"

    const-string v13, "Gramma error!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v12, 0x2

    if-lt v7, v12, :cond_1

    const/4 v12, 0x0

    aget-object v12, v2, v12

    iput-object v12, v9, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;->action:Ljava/lang/String;

    const/4 v12, 0x1

    aget-object v12, v2, v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v12, v3

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v12, 0x0

    aget-object v12, v3, v12

    const-string v13, "{"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v12, -0x1

    if-ne v8, v12, :cond_2

    iget-object v12, v10, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->words:Ljava/util/ArrayList;

    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    const/4 v12, 0x3

    if-ne v7, v12, :cond_5

    const/4 v12, 0x2

    aget-object v12, v2, v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    array-length v6, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_5

    aget-object v5, v0, v1

    iget-object v12, v10, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->keyWords:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v12, v10, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->words:Ljava/util/ArrayList;

    const/4 v13, 0x0

    aget-object v13, v3, v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    aget-object v12, v3, v12

    const-string v13, "}"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v12, 0x0

    aget-object v12, v3, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v8, v12, :cond_3

    const/4 v12, 0x0

    aget-object v12, v3, v12

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->subWord:Ljava/lang/String;

    :cond_3
    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->hasInput:Z

    goto :goto_0

    :cond_4
    move-object v0, v3

    array-length v6, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_1

    aget-object v11, v0, v1

    iget-object v12, v10, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->words:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v12, v9, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v9
.end method

.method private static findMatchGrammar(Ljava/lang/String;)Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;
    .locals 21

    sget-object v18, Lcom/car/common/voice/PinyinVoiceGrammar;->mGrammarList:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;

    iget-object v0, v11, Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;->tokens:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/car/common/voice/PinyinVoiceGrammar$Token;

    move-object/from16 v16, p0

    iget-object v0, v15, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->subWord:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_b

    const/4 v10, 0x0

    iget-object v0, v15, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->words:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lcom/car/common/pinyin/PinyinFuzzy;->hasChinese(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    iget-boolean v0, v15, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->hasInput:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    :cond_2
    const/4 v10, 0x1

    :cond_3
    :goto_0
    if-eqz v10, :cond_0

    iget-boolean v0, v15, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->hasInput:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    iget-object v0, v15, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->words:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    iget-object v0, v15, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->words:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v14, v19, v18

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->input:Ljava/lang/String;

    :cond_4
    iget-object v0, v15, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->keyWords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_6

    iget-object v0, v15, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->keyWords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    :cond_6
    :goto_1
    return-object v11

    :cond_7
    new-instance v4, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-direct {v4}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;-><init>()V

    sget-object v18, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_a

    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x7f

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_9

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    invoke-static {v0, v4}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    array-length v0, v12

    move/from16 v18, v0

    if-lez v18, :cond_8

    const/16 v18, 0x0

    aget-object v18, v12, v18

    invoke-static/range {v18 .. v18}, Lcom/car/common/pinyin/PinyinFuzzy;->fuzzy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;->printStackTrace()V

    goto :goto_3

    :cond_a
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v18, "CarSvc_VoiceGrammar"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "inputPinyin="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_b
    iget-object v0, v15, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->words:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    iget-object v0, v15, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->subWord:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    iget-object v0, v15, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->words:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    iget-object v0, v15, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->words:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v14, v19, v18

    iget-object v0, v15, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->subWord:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    iget-object v0, v15, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->subWord:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v3, v18, v19

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->input:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method public static isWordHitting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xa

    if-le v11, v12, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    new-instance v3, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-direct {v3}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;-><init>()V

    sget-object v11, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {v3, v11}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v4, v11, :cond_3

    :try_start_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x7f

    if-le v11, v12, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11, v3}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    array-length v11, v9

    if-lez v11, :cond_1

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-static {v11}, Lcom/car/common/pinyin/PinyinFuzzy;->fuzzy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;->printStackTrace()V

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/car/common/pinyin/PinyinFuzzy;->getPinyinFuzzy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/car/common/voice/PinyinVoiceGrammar;->sFilterWords:[Ljava/lang/String;

    array-length v8, v0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v8, :cond_6

    aget-object v2, v0, v5

    const-string v11, "CarSvc_VoiceGrammar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "inputPinyin="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-le v11, v12, :cond_4

    const/4 v11, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_6
    const-string v11, "CarSvc_VoiceGrammar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "keyWordPinyin="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private static loadGrammarFile(Ljava/io/InputStreamReader;)V
    .locals 14

    const/4 v12, 0x2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v9, 0x0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v12, :cond_5

    :cond_1
    const-string v10, "##"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v12, :cond_0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    array-length v10, v5

    if-ne v10, v12, :cond_4

    new-instance v8, Lcom/car/common/voice/VoiceHelp$MyHelp;

    const/4 v10, 0x1

    aget-object v10, v5, v10

    const/4 v11, 0x0

    invoke-direct {v8, v10, v11}, Lcom/car/common/voice/VoiceHelp$MyHelp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz v8, :cond_0

    sget-object v10, Lcom/car/common/voice/PinyinVoiceGrammar;->sMap:Ljava/util/HashMap;

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v1

    :goto_2
    :try_start_2
    const-string v10, "CarSvc_VoiceGrammar"

    const-string v11, "loadGrammarFile error"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_3
    const-string v10, "CarSvc_VoiceGrammar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GrammarList size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/car/common/voice/PinyinVoiceGrammar;->mGrammarList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    :cond_4
    :try_start_4
    array-length v10, v5

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    new-instance v8, Lcom/car/common/voice/VoiceHelp$MyHelp;

    const/4 v10, 0x1

    aget-object v10, v5, v10

    const/4 v11, 0x2

    aget-object v11, v5, v11

    invoke-direct {v8, v10, v11}, Lcom/car/common/voice/VoiceHelp$MyHelp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v10, v7

    if-ne v10, v12, :cond_8

    sget-object v10, Lcom/car/common/voice/PinyinVoiceGrammar;->sMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Lcom/car/common/voice/PinyinVoiceGrammar;->sMap:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/common/voice/VoiceHelp$MyHelp;

    if-eqz v8, :cond_6

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v8, v10}, Lcom/car/common/voice/VoiceHelp$MyHelp;->addItems(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v10

    move-object v0, v1

    :goto_6
    if-eqz v0, :cond_7

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_7
    const-string v11, "CarSvc_VoiceGrammar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "GrammarList size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/car/common/voice/PinyinVoiceGrammar;->mGrammarList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v10

    :cond_8
    :try_start_6
    invoke-static {v9}, Lcom/car/common/voice/PinyinVoiceGrammar;->createGrammar(Ljava/lang/String;)Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;

    move-result-object v3

    sget-object v10, Lcom/car/common/voice/PinyinVoiceGrammar;->mGrammarList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_9
    if-eqz v1, :cond_a

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_a
    :goto_8
    const-string v10, "CarSvc_VoiceGrammar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GrammarList size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/car/common/voice/PinyinVoiceGrammar;->mGrammarList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_4

    :catch_1
    move-exception v10

    goto :goto_8

    :catch_2
    move-exception v10

    goto/16 :goto_3

    :catch_3
    move-exception v11

    goto :goto_7

    :catchall_1
    move-exception v10

    goto :goto_6

    :catch_4
    move-exception v2

    goto/16 :goto_2
.end method

.method public static loadGrammer(Landroid/content/Context;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    const-string v8, "/system/etc/PinyinVoiceGrammar.conf"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v3, v2, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/car/common/voice/PinyinVoiceGrammar;->loadGrammarFile(Ljava/io/InputStreamReader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    const/4 v4, 0x0

    :try_start_3
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "PinyinVoiceGrammar.conf"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v5}, Lcom/car/common/voice/PinyinVoiceGrammar;->loadGrammarFile(Ljava/io/InputStreamReader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_1

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v7

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    :try_start_6
    const-string v7, "CarSvc_VoiceGrammar"

    const-string v8, "loadGrammarFile error"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    :catch_2
    move-exception v7

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v1, :cond_2

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_2
    :goto_4
    throw v7

    :catch_3
    move-exception v0

    :goto_5
    :try_start_9
    const-string v7, "CarSvc_VoiceGrammar"

    const-string v8, "loadGrammarFile error"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v4, :cond_1

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_1

    :catch_4
    move-exception v7

    goto :goto_1

    :catchall_1
    move-exception v7

    :goto_6
    if-eqz v4, :cond_3

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_3
    :goto_7
    throw v7

    :catch_5
    move-exception v8

    goto :goto_4

    :catch_6
    move-exception v7

    goto :goto_1

    :catch_7
    move-exception v8

    goto :goto_7

    :catchall_2
    move-exception v7

    move-object v4, v5

    goto :goto_6

    :catch_8
    move-exception v0

    move-object v4, v5

    goto :goto_5

    :catchall_3
    move-exception v7

    move-object v1, v2

    goto :goto_3

    :catch_9
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_0
.end method

.method public static parseSpeech(Ljava/lang/String;)Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;
    .locals 1

    invoke-static {p0}, Lcom/car/common/voice/PinyinVoiceGrammar;->findMatchGrammar(Ljava/lang/String;)Lcom/car/common/voice/PinyinVoiceGrammar$PinyinGrammar;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    return-object v0
.end method
