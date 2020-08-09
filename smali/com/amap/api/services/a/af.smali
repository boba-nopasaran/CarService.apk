.class public Lcom/amap/api/services/a/af;
.super Ljava/lang/Object;
.source "StatisticsUtil.java"


# static fields
.field static a:Lcom/amap/api/services/a/di;


# direct methods
.method private static a(Lcom/amap/api/services/core/AMapException;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/services/core/AMapException;->getErrorLevel()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "4"

    :goto_0
    return-object v0

    :cond_0
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v1, v2

    rem-int/2addr v0, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;JZ)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"RequestPath\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"ResponseTime\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"Success\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "StatisticsUtil"

    const-string v2, "generateNetWorkResponseStatisticsEntity"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JZ)V
    .locals 6

    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/amap/api/services/a/af;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/amap/api/services/a/af;->a:Lcom/amap/api/services/a/di;

    if-nez v1, :cond_2

    new-instance v1, Lcom/amap/api/services/a/di;

    const-string v2, "sea"

    const-string v3, "5.3.1"

    const-string v4, "O002"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/amap/api/services/a/di;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amap/api/services/a/af;->a:Lcom/amap/api/services/a/di;

    :cond_2
    sget-object v1, Lcom/amap/api/services/a/af;->a:Lcom/amap/api/services/a/di;

    invoke-virtual {v1, v0}, Lcom/amap/api/services/a/di;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/amap/api/services/a/af;->a:Lcom/amap/api/services/a/di;

    invoke-static {v0, p0}, Lcom/amap/api/services/a/dj;->a(Lcom/amap/api/services/a/di;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatisticsUtil"

    const-string v2, "recordResponseAction"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/core/AMapException;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/amap/api/services/core/AMapException;->getErrorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/amap/api/services/a/af;->a(Lcom/amap/api/services/core/AMapException;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v3}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/bh;

    move-result-object v2

    invoke-static {v2, p0, v0, p1, v1}, Lcom/amap/api/services/a/bo;->a(Lcom/amap/api/services/a/bh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
