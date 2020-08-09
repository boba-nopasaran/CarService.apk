.class Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;
.super Ljava/lang/Object;
.source "OSSLogToFileUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteCall"
.end annotation


# instance fields
.field private mStr:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;->mStr:Ljava/lang/Object;

    return-void
.end method

.method private getOperatorName()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$100()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    const-string v3, "46000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string v1, "CMCC"

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const-string v3, "46001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "CUCC"

    goto :goto_0

    :cond_3
    const-string v3, "46003"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "CTCC"

    goto :goto_0
.end method

.method private printEx(Ljava/io/PrintWriter;)Ljava/io/PrintWriter;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crash_time\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$400()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;->mStr:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return-object p1
.end method

.method private setBaseInfo(Ljava/io/PrintWriter;)Ljava/io/PrintWriter;
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_version\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile_model\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$100()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v2, "unconnected"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    const-string v2, "connected"

    :cond_0
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;->getOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operator_name\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;->getOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network_state\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network_type\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string v3, "unknown"

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$000()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getInstance()Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$000()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getLogFileSize(Ljava/io/File;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Log max size is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$100()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$200()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logInfo(Ljava/lang/String;Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Log now size is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$100()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logInfo(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$200()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getInstance()Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->resetLogFile()V

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$000()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    if-eqz v1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$000()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    const-string v4, "write data"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    invoke-direct {p0, v1}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;->setBaseInfo(Ljava/io/PrintWriter;)Ljava/io/PrintWriter;

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;->mStr:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;->printEx(Ljava/io/PrintWriter;)Ljava/io/PrintWriter;

    :goto_0
    const-string v4, "------>end of log"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getInstance()Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->access$300(Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;->mStr:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
