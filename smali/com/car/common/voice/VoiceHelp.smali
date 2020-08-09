.class public final Lcom/car/common/voice/VoiceHelp;
.super Ljava/lang/Object;
.source "VoiceHelp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/common/voice/VoiceHelp$MyHelp;
    }
.end annotation


# static fields
.field static CONST_INDEX_STRING:[Ljava/lang/String; = null

.field public static final CmdExit:I = -0x2

.field public static final CmdRestart:I = -0x3

.field public static final INDEX_ALL:I = 0x2710

.field public static final InvalidIndex:I = -0x1

.field public static final MaxIndex:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u7b2c\u4e00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u7b2c\u4e8c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u7b2c\u4e09"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u7b2c\u56db"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u7b2c\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u7b2c\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u7b2c\u4e03"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u7b2c\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u7b2c\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u7b2c\u5341"

    aput-object v2, v0, v1

    sput-object v0, Lcom/car/common/voice/VoiceHelp;->CONST_INDEX_STRING:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static indexToString(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/common/voice/VoiceHelp;->CONST_INDEX_STRING:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method static isAllDigits(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_1
    return v5

    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static isCancel(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOk(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "\u786e\u5b9a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "ok"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "OK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static muteTTS(Z)V
    .locals 0

    return-void
.end method

.method public static specialCommand(Ljava/lang/String;)I
    .locals 1

    const-string v0, "\u9000\u51fa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_1
    const-string v0, "\u91cd\u65b0\u5f00"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    const-string v0, "\u65b0\u5f00\u59cb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    :cond_2
    const/4 v0, -0x3

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static voiceToIndex(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/car/common/voice/VoiceHelp;->isAllDigits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "\u7b2c\u4e00"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    const-string v0, "\u4e00\u6761"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "\u7b2c\u4e8c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    const-string v0, "\u4e8c\u6761"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const-string v0, "\u7b2c\u4e09"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_5

    const-string v0, "\u4e09\u6761"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6

    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    :cond_6
    const-string v0, "\u7b2c\u56db"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_7

    const-string v0, "\u56db\u6761"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    :cond_7
    const/4 v0, 0x3

    goto :goto_0

    :cond_8
    const-string v0, "\u7b2c\u4e94"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_9

    const-string v0, "\u4e94\u6761"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_a

    :cond_9
    const/4 v0, 0x4

    goto :goto_0

    :cond_a
    const-string v0, "\u7b2c\u516d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_b

    const-string v0, "\u516d\u6761"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_c

    :cond_b
    const/4 v0, 0x5

    goto :goto_0

    :cond_c
    const-string v0, "\u7b2c\u4e03"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_d

    const-string v0, "\u4e03\u6761"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_e

    :cond_d
    const/4 v0, 0x6

    goto :goto_0

    :cond_e
    const-string v0, "\u7b2c\u516b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_f

    const-string v0, "\u516b\u6761"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_10

    :cond_f
    const/4 v0, 0x7

    goto/16 :goto_0

    :cond_10
    const-string v0, "\u7b2c\u4e5d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_11

    const-string v0, "\u4e5d\u6761"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_12

    :cond_11
    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_12
    const-string v0, "\u7b2c\u5341"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_13

    const-string v0, "\u5341\u6761"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_14

    :cond_13
    const/16 v0, 0x9

    goto/16 :goto_0

    :cond_14
    const-string v0, "\u5168\u90e8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_15

    const-string v0, "\u6240\u6709"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_16

    :cond_15
    const/16 v0, 0x2710

    goto/16 :goto_0

    :cond_16
    invoke-static {p0}, Lcom/car/common/voice/VoiceHelp;->specialCommand(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method
