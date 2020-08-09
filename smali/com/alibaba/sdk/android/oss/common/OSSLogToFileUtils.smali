.class public Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;
.super Ljava/lang/Object;
.source "OSSLogToFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;
    }
.end annotation


# static fields
.field private static final LOG_DIR_NAME:Ljava/lang/String; = "OSSLog"

.field private static LOG_MAX_SIZE:J

.field private static instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

.field private static logService:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

.field private static sContext:Landroid/content/Context;

.field private static sLogFile:Ljava/io/File;

.field private static sLogSDF:Ljava/text/SimpleDateFormat;

.field private static sWrite2Local:Z


# instance fields
.field private useSdCard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->newInstance()Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->logService:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogSDF:Ljava/text/SimpleDateFormat;

    const-wide/32 v0, 0x500000

    sput-wide v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->LOG_MAX_SIZE:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sWrite2Local:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->useSdCard:Z

    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()J
    .locals 2

    sget-wide v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->LOG_MAX_SIZE:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;[Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getFunctionInfo([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogSDF:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private getFunctionInfo([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogSDF:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    if-nez v0, :cond_1

    const-class v1, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getLocalLogFileSize()J
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getLogFileSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getLogFile()Ljava/io/File;
    .locals 10

    const-wide/16 v8, 0x400

    const/4 v0, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->useSdCard:Z

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->readSDCardSpace()J

    move-result-wide v4

    sget-wide v6, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->LOG_MAX_SIZE:J

    div-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "OSSLog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/logs.csv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->createNewFile(Ljava/io/File;)V

    :cond_1
    return-object v2

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->readSystemSpace()J

    move-result-wide v4

    sget-wide v6, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->LOG_MAX_SIZE:J

    div-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    :goto_2
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "OSSLog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method public static getLogFileSize(Ljava/io/File;)J
    .locals 8

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    int-to-long v4, v3

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-wide v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;Z)V

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;Z)V

    goto :goto_3

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static init(Landroid/content/Context;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V
    .locals 7

    const/4 v6, 0x0

    const-string v2, "init ..."

    invoke-static {v2, v6}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getMaxLogSize()J

    move-result-wide v2

    sput-wide v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->LOG_MAX_SIZE:J

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getInstance()Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    move-result-object v2

    sput-object v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getLogFile()Ljava/io/File;

    move-result-object v2

    sput-object v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LogFilePath is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logInfo(Ljava/lang/String;Z)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getLogFileSize(Ljava/io/File;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log max size is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->LOG_MAX_SIZE:J

    invoke-static {p0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logInfo(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log now size is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logInfo(Ljava/lang/String;Z)V

    sget-wide v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->LOG_MAX_SIZE:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    const-string v2, "init reset log file"

    invoke-static {v2, v6}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logInfo(Ljava/lang/String;Z)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->resetLogFile()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v2, "LogToFileUtils has been init ..."

    invoke-static {v2, v6}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private readSDCardSpace()J
    .locals 11

    const-wide/16 v4, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    mul-long v4, v0, v2

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sd\u5361\u5b58\u50a8\u7a7a\u95f4:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "kb"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    return-wide v4
.end method

.method private readSystemSpace()J
    .locals 12

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    mul-long v8, v0, v2

    const-wide/16 v10, 0x400

    div-long v6, v8, v10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5185\u90e8\u5b58\u50a8\u7a7a\u95f4:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "kb"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    return-wide v6
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sContext:Landroid/content/Context;

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public createNewFile(Ljava/io/File;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create log file failure !!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public deleteLogFile()V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/logs.csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "delete Log File ... "

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public deleteLogFileDir()V
    .locals 3

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->deleteLogFile()V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OSSLog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "delete Log FileDir ... "

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public resetLogFile()V
    .locals 3

    const/4 v2, 0x0

    const-string v1, "Reset Log File ... "

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Reset Log make File dir ... "

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/logs.csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->createNewFile(Ljava/io/File;)V

    return-void
.end method

.method public setUseSdCard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->useSdCard:Z

    return-void
.end method

.method public declared-synchronized write(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->isEnableLog()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v1, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->resetLogFile()V

    :cond_2
    new-instance v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;

    invoke-direct {v0, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->logService:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->addExecuteTask(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
