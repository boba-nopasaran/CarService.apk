.class public final enum Lcom/car/zxing/common/CharacterSetECI;
.super Ljava/lang/Enum;
.source "CharacterSetECI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/car/zxing/common/CharacterSetECI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum ASCII:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum Big5:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum Cp1250:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum Cp1251:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum Cp1252:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum Cp1256:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum Cp437:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum EUC_KR:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum GB18030:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_1:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_10:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_11:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_13:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_14:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_15:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_16:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_2:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_3:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_4:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_5:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_6:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_7:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_8:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_9:Lcom/car/zxing/common/CharacterSetECI;

.field private static final NAME_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/car/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SJIS:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum UTF8:Lcom/car/zxing/common/CharacterSetECI;

.field public static final enum UnicodeBigUnmarked:Lcom/car/zxing/common/CharacterSetECI;

.field private static final VALUE_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/car/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final otherEncodingNames:[Ljava/lang/String;

.field private final values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "Cp437"

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [I

    fill-array-data v12, :array_0

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->Cp437:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "ISO8859_1"

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [I

    fill-array-data v12, :array_1

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "ISO-8859-1"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_1:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "ISO8859_2"

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "ISO-8859-2"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_2:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "ISO8859_3"

    const/4 v11, 0x3

    const/4 v12, 0x5

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "ISO-8859-3"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_3:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "ISO8859_4"

    const/4 v11, 0x4

    const/4 v12, 0x6

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "ISO-8859-4"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_4:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "ISO8859_5"

    const/4 v11, 0x5

    const/4 v12, 0x7

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "ISO-8859-5"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_5:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "ISO8859_6"

    const/4 v11, 0x6

    const/16 v12, 0x8

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "ISO-8859-6"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_6:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "ISO8859_7"

    const/4 v11, 0x7

    const/16 v12, 0x9

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "ISO-8859-7"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_7:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "ISO8859_8"

    const/16 v11, 0x8

    const/16 v12, 0xa

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "ISO-8859-8"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_8:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "ISO8859_9"

    const/16 v11, 0x9

    const/16 v12, 0xb

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "ISO-8859-9"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_9:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "ISO8859_10"

    const/16 v11, 0xa

    const/16 v12, 0xc

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "ISO-8859-10"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_10:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "ISO8859_11"

    const/16 v11, 0xb

    const/16 v12, 0xd

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "ISO-8859-11"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_11:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "ISO8859_13"

    const/16 v11, 0xc

    const/16 v12, 0xf

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "ISO-8859-13"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_13:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "ISO8859_14"

    const/16 v11, 0xd

    const/16 v12, 0x10

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "ISO-8859-14"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_14:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "ISO8859_15"

    const/16 v11, 0xe

    const/16 v12, 0x11

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "ISO-8859-15"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_15:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "ISO8859_16"

    const/16 v11, 0xf

    const/16 v12, 0x12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "ISO-8859-16"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_16:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "SJIS"

    const/16 v11, 0x10

    const/16 v12, 0x14

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "Shift_JIS"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->SJIS:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "Cp1250"

    const/16 v11, 0x11

    const/16 v12, 0x15

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "windows-1250"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->Cp1250:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "Cp1251"

    const/16 v11, 0x12

    const/16 v12, 0x16

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "windows-1251"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->Cp1251:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "Cp1252"

    const/16 v11, 0x13

    const/16 v12, 0x17

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "windows-1252"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->Cp1252:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "Cp1256"

    const/16 v11, 0x14

    const/16 v12, 0x18

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "windows-1256"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->Cp1256:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "UnicodeBigUnmarked"

    const/16 v11, 0x15

    const/16 v12, 0x19

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "UTF-16BE"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "UnicodeBig"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->UnicodeBigUnmarked:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "UTF8"

    const/16 v11, 0x16

    const/16 v12, 0x1a

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "UTF-8"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->UTF8:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "ASCII"

    const/16 v11, 0x17

    const/4 v12, 0x2

    new-array v12, v12, [I

    fill-array-data v12, :array_2

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "US-ASCII"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->ASCII:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "Big5"

    const/16 v11, 0x18

    const/16 v12, 0x1c

    invoke-direct {v9, v10, v11, v12}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->Big5:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "GB18030"

    const/16 v11, 0x19

    const/16 v12, 0x1d

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "GB2312"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "EUC_CN"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string v15, "GBK"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->GB18030:Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Lcom/car/zxing/common/CharacterSetECI;

    const-string v10, "EUC_KR"

    const/16 v11, 0x1a

    const/16 v12, 0x1e

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "EUC-KR"

    aput-object v15, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->EUC_KR:Lcom/car/zxing/common/CharacterSetECI;

    const/16 v9, 0x1b

    new-array v9, v9, [Lcom/car/zxing/common/CharacterSetECI;

    const/4 v10, 0x0

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->Cp437:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_1:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_2:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_3:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/4 v10, 0x4

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_4:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/4 v10, 0x5

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_5:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/4 v10, 0x6

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_6:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/4 v10, 0x7

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_7:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/16 v10, 0x8

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_8:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/16 v10, 0x9

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_9:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/16 v10, 0xa

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_10:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/16 v10, 0xb

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_11:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/16 v10, 0xc

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_13:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/16 v10, 0xd

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_14:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/16 v10, 0xe

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_15:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/16 v10, 0xf

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->ISO8859_16:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/16 v10, 0x10

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->SJIS:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/16 v10, 0x11

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->Cp1250:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/16 v10, 0x12

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->Cp1251:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/16 v10, 0x13

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->Cp1252:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/16 v10, 0x14

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->Cp1256:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/16 v10, 0x15

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->UnicodeBigUnmarked:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/16 v10, 0x16

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->UTF8:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/16 v10, 0x17

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->ASCII:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/16 v10, 0x18

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->Big5:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/16 v10, 0x19

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->GB18030:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    sget-object v11, Lcom/car/zxing/common/CharacterSetECI;->EUC_KR:Lcom/car/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->$VALUES:[Lcom/car/zxing/common/CharacterSetECI;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lcom/car/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-static {}, Lcom/car/zxing/common/CharacterSetECI;->values()[Lcom/car/zxing/common/CharacterSetECI;

    move-result-object v0

    array-length v5, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    iget-object v1, v2, Lcom/car/zxing/common/CharacterSetECI;->values:[I

    array-length v6, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_0

    aget v8, v1, v3

    sget-object v9, Lcom/car/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    sget-object v9, Lcom/car/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/car/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/car/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    array-length v6, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_1

    aget-object v7, v1, v3

    sget-object v9, Lcom/car/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v9, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x1b
        0xaa
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p3, v0, v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/car/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    iput-object v0, p0, Lcom/car/zxing/common/CharacterSetECI;->values:[I

    iput-object p4, p0, Lcom/car/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/car/zxing/common/CharacterSetECI;->values:[I

    iput-object p4, p0, Lcom/car/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method public static getCharacterSetECIByName(Ljava/lang/String;)Lcom/car/zxing/common/CharacterSetECI;
    .locals 1

    sget-object v0, Lcom/car/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/zxing/common/CharacterSetECI;

    return-object v0
.end method

.method public static getCharacterSetECIByValue(I)Lcom/car/zxing/common/CharacterSetECI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/zxing/FormatException;
        }
    .end annotation

    if-ltz p0, :cond_0

    const/16 v0, 0x384

    if-lt p0, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/car/zxing/FormatException;->getFormatInstance()Lcom/car/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_1
    sget-object v0, Lcom/car/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/zxing/common/CharacterSetECI;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/car/zxing/common/CharacterSetECI;
    .locals 1

    const-class v0, Lcom/car/zxing/common/CharacterSetECI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/car/zxing/common/CharacterSetECI;

    return-object v0
.end method

.method public static values()[Lcom/car/zxing/common/CharacterSetECI;
    .locals 1

    sget-object v0, Lcom/car/zxing/common/CharacterSetECI;->$VALUES:[Lcom/car/zxing/common/CharacterSetECI;

    invoke-virtual {v0}, [Lcom/car/zxing/common/CharacterSetECI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/car/zxing/common/CharacterSetECI;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 2

    iget-object v0, p0, Lcom/car/zxing/common/CharacterSetECI;->values:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
