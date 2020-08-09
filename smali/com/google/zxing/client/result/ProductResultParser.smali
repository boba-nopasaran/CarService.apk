.class public final Lcom/google/zxing/client/result/ProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ProductParsedResult;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ProductParsedResult;
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-eq v0, v4, :cond_1

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    if-eq v0, v4, :cond_1

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    if-eq v0, v4, :cond_1

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-eq v0, v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-static {p1}, Lcom/google/zxing/client/result/ProductResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v4}, Lcom/google/zxing/client/result/ProductResultParser;->isStringOfDigits(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    if-ne v0, v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    invoke-static {v2}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v3, Lcom/google/zxing/client/result/ProductParsedResult;

    invoke-direct {v3, v2, v1}, Lcom/google/zxing/client/result/ProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method
