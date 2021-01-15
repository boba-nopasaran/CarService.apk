.class public Lcom/car/common/NumUtil;
.super Ljava/lang/Object;
.source "NumUtil.java"


# static fields
.field public static final enNum:[Ljava/lang/String;

.field public static final enUnit:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    const/16 v0, 0x5b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "zero"

    aput-object v1, v0, v3

    const-string v1, "one"

    aput-object v1, v0, v4

    const-string v1, "two"

    aput-object v1, v0, v5

    const-string v1, "three"

    aput-object v1, v0, v6

    const-string v1, "four"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "five"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "six"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "seven"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "eight"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "nine"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ten"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "eleven"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "twelve"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "thirteen"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fourteen"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "fifteen"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sixteen"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "seventeen"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "eighteen"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "nineteen"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "twenty"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "thirty"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "forty"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "fifty"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "sixty"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "seventy"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "eighty"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "ninety"

    aput-object v2, v0, v1

    sput-object v0, Lcom/car/common/NumUtil;->enNum:[Ljava/lang/String;

    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "hundred"

    aput-object v1, v0, v3

    const-string v1, "thousand"

    aput-object v1, v0, v4

    const-string v1, "million"

    aput-object v1, v0, v5

    const-string v1, "billion"

    aput-object v1, v0, v6

    const-string v1, "trillion"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "quintillion"

    aput-object v2, v0, v1

    sput-object v0, Lcom/car/common/NumUtil;->enUnit:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analyze(J)Ljava/lang/String;
    .locals 2
    .param p0, "num"    # J

    .prologue
    .line 20
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/car/common/NumUtil;->analyze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static analyze(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "num"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

#by boba 15.01.2021
#speech for ru
const-string v8, "ru"
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-nez v8, :goto_0

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "zh"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 73
    .end local p0    # "num":Ljava/lang/String;
    .local v1, "count":I
    :goto_0
    return-object p0

    .line 26
    .end local v1    # "count":I
    .restart local p0    # "num":Ljava/lang/String;
    :cond_0
    const-string v7, "\\d+"

    invoke-virtual {p0, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 27
    const-string v7, "%s is not number"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 30
    :cond_1
    const-string v7, "^[0]*([1-9]*)"

    const-string v8, "$1"

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 33
    sget-object v7, Lcom/car/common/NumUtil;->enNum:[Ljava/lang/String;

    aget-object p0, v7, v9

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x9

    if-le v7, v8, :cond_3

    .line 35
    const-string p0, "too big"

    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    rem-int/lit8 v7, v7, 0x3

    if-nez v7, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v1, v7, 0x3

    .line 40
    .restart local v1    # "count":I
    :goto_1
    sget-object v7, Lcom/car/common/NumUtil;->enUnit:[Ljava/lang/String;

    array-length v7, v7

    if-le v1, v7, :cond_5

    .line 41
    const-string p0, "too big"

    goto :goto_0

    .line 38
    .end local v1    # "count":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    add-int/lit8 v1, v7, 0x1

    goto :goto_1

    .line 44
    .restart local v1    # "count":I
    :cond_5
    new-array v2, v1, [Ljava/lang/String;

    .line 45
    .local v2, "group":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "i":I
    array-length v7, v2

    add-int/lit8 v4, v7, -0x1

    .local v4, "j":I
    move v5, v4

    .end local v4    # "j":I
    .local v5, "j":I
    :goto_2
    if-lez v3, :cond_6

    .line 46
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "j":I
    .restart local v4    # "j":I
    add-int/lit8 v7, v3, -0x3

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 45
    add-int/lit8 v3, v3, -0x3

    move v5, v4

    .end local v4    # "j":I
    .restart local v5    # "j":I
    goto :goto_2

    .line 49
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_b

    .line 51
    aget-object v7, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 52
    .local v6, "v":I
    const/16 v7, 0x64

    if-lt v6, v7, :cond_7

    .line 53
    sget-object v7, Lcom/car/common/NumUtil;->enNum:[Ljava/lang/String;

    div-int/lit8 v8, v6, 0x64

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/car/common/NumUtil;->enUnit:[Ljava/lang/String;

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    rem-int/lit8 v6, v6, 0x64

    .line 56
    if-eqz v6, :cond_7

    .line 57
    const-string v7, "and "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_7
    if-eqz v6, :cond_9

    .line 61
    const/16 v7, 0x14

    if-lt v6, v7, :cond_8

    rem-int/lit8 v7, v6, 0xa

    if-nez v7, :cond_a

    .line 62
    :cond_8
    sget-object v7, Lcom/car/common/NumUtil;->enNum:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :goto_4
    add-int/lit8 v7, v1, -0x1

    if-eq v3, v7, :cond_9

    .line 68
    sget-object v7, Lcom/car/common/NumUtil;->enUnit:[Ljava/lang/String;

    add-int/lit8 v8, v1, -0x1

    sub-int/2addr v8, v3

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 64
    :cond_a
    sget-object v7, Lcom/car/common/NumUtil;->enNum:[Ljava/lang/String;

    rem-int/lit8 v8, v6, 0xa

    sub-int v8, v6, v8

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    sget-object v7, Lcom/car/common/NumUtil;->enNum:[Ljava/lang/String;

    rem-int/lit8 v8, v6, 0xa

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 73
    .end local v6    # "v":I
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method
