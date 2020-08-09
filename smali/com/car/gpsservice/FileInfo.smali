.class public Lcom/car/gpsservice/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/car/gpsservice/FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public mName:Ljava/lang/String;

.field public mTimeSecond:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/car/gpsservice/FileInfo;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/car/gpsservice/FileInfo;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/car/gpsservice/FileInfo;->getTimeSecondFromName(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/car/gpsservice/FileInfo;->mTimeSecond:J

    return-void
.end method

.method public static getTimeSecondFromName(Ljava/lang/String;)J
    .locals 10

    :try_start_0
    const-string v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v6, 0x8

    const/16 v7, 0xa

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v0, Ljava/util/Date;

    add-int/lit16 v6, v5, -0x76c

    add-int/lit8 v7, v4, -0x1

    invoke-direct {v0, v6, v7, v1}, Ljava/util/Date;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v6

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const-wide v6, 0x7fffffffffffffffL

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/car/gpsservice/FileInfo;)I
    .locals 5

    iget-wide v2, p1, Lcom/car/gpsservice/FileInfo;->mTimeSecond:J

    iget-wide v0, p0, Lcom/car/gpsservice/FileInfo;->mTimeSecond:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/car/gpsservice/FileInfo;

    invoke-virtual {p0, p1}, Lcom/car/gpsservice/FileInfo;->compareTo(Lcom/car/gpsservice/FileInfo;)I

    move-result v0

    return v0
.end method
