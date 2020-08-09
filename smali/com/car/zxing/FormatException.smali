.class public final Lcom/car/zxing/FormatException;
.super Lcom/car/zxing/ReaderException;
.source "FormatException.java"


# static fields
.field private static final instance:Lcom/car/zxing/FormatException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/car/zxing/FormatException;

    invoke-direct {v0}, Lcom/car/zxing/FormatException;-><init>()V

    sput-object v0, Lcom/car/zxing/FormatException;->instance:Lcom/car/zxing/FormatException;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/car/zxing/ReaderException;-><init>()V

    return-void
.end method

.method public static getFormatInstance()Lcom/car/zxing/FormatException;
    .locals 1

    sget-object v0, Lcom/car/zxing/FormatException;->instance:Lcom/car/zxing/FormatException;

    return-object v0
.end method
