.class public final enum Lcom/car/zxing/EncodeHintType;
.super Ljava/lang/Enum;
.source "EncodeHintType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/car/zxing/EncodeHintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/car/zxing/EncodeHintType;

.field public static final enum CHARACTER_SET:Lcom/car/zxing/EncodeHintType;

.field public static final enum ERROR_CORRECTION:Lcom/car/zxing/EncodeHintType;

.field public static final enum MARGIN:Lcom/car/zxing/EncodeHintType;

.field public static final enum PDF417_COMPACT:Lcom/car/zxing/EncodeHintType;

.field public static final enum PDF417_COMPACTION:Lcom/car/zxing/EncodeHintType;

.field public static final enum PDF417_DIMENSIONS:Lcom/car/zxing/EncodeHintType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/car/zxing/EncodeHintType;

    const-string v1, "ERROR_CORRECTION"

    invoke-direct {v0, v1, v3}, Lcom/car/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/car/zxing/EncodeHintType;

    new-instance v0, Lcom/car/zxing/EncodeHintType;

    const-string v1, "CHARACTER_SET"

    invoke-direct {v0, v1, v4}, Lcom/car/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/zxing/EncodeHintType;->CHARACTER_SET:Lcom/car/zxing/EncodeHintType;

    new-instance v0, Lcom/car/zxing/EncodeHintType;

    const-string v1, "MARGIN"

    invoke-direct {v0, v1, v5}, Lcom/car/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/zxing/EncodeHintType;->MARGIN:Lcom/car/zxing/EncodeHintType;

    new-instance v0, Lcom/car/zxing/EncodeHintType;

    const-string v1, "PDF417_COMPACT"

    invoke-direct {v0, v1, v6}, Lcom/car/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/car/zxing/EncodeHintType;

    new-instance v0, Lcom/car/zxing/EncodeHintType;

    const-string v1, "PDF417_COMPACTION"

    invoke-direct {v0, v1, v7}, Lcom/car/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/car/zxing/EncodeHintType;

    new-instance v0, Lcom/car/zxing/EncodeHintType;

    const-string v1, "PDF417_DIMENSIONS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/car/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/car/zxing/EncodeHintType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/car/zxing/EncodeHintType;

    sget-object v1, Lcom/car/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/car/zxing/EncodeHintType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/car/zxing/EncodeHintType;->CHARACTER_SET:Lcom/car/zxing/EncodeHintType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/car/zxing/EncodeHintType;->MARGIN:Lcom/car/zxing/EncodeHintType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/car/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/car/zxing/EncodeHintType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/car/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/car/zxing/EncodeHintType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/car/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/car/zxing/EncodeHintType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/car/zxing/EncodeHintType;->$VALUES:[Lcom/car/zxing/EncodeHintType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/car/zxing/EncodeHintType;
    .locals 1

    const-class v0, Lcom/car/zxing/EncodeHintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/car/zxing/EncodeHintType;

    return-object v0
.end method

.method public static values()[Lcom/car/zxing/EncodeHintType;
    .locals 1

    sget-object v0, Lcom/car/zxing/EncodeHintType;->$VALUES:[Lcom/car/zxing/EncodeHintType;

    invoke-virtual {v0}, [Lcom/car/zxing/EncodeHintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/car/zxing/EncodeHintType;

    return-object v0
.end method
