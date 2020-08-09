.class public interface abstract Lcom/car/zxing/Writer;
.super Ljava/lang/Object;
.source "Writer.java"


# virtual methods
.method public abstract encode(Ljava/lang/String;Lcom/car/zxing/BarcodeFormat;II)Lcom/car/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/zxing/WriterException;
        }
    .end annotation
.end method

.method public abstract encode(Ljava/lang/String;Lcom/car/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/car/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/car/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/car/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/car/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/zxing/WriterException;
        }
    .end annotation
.end method
