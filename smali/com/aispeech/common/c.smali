.class public final Lcom/aispeech/common/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static b:Z

.field private static c:Z

.field private static d:I

.field private static e:Ljava/io/FileWriter;

.field private static f:Ljava/text/SimpleDateFormat;

.field private static g:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/aispeech/common/c;->c:Z

    sget-boolean v0, Lcom/aispeech/d;->a:Z

    sput-boolean v0, Lcom/aispeech/common/c;->a:Z

    sget-boolean v0, Lcom/aispeech/d;->b:Z

    sput-boolean v0, Lcom/aispeech/common/c;->b:Z

    const/4 v0, 0x5

    sput v0, Lcom/aispeech/common/c;->d:I

    const/4 v0, 0x0

    sput-object v0, Lcom/aispeech/common/c;->e:Ljava/io/FileWriter;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/aispeech/common/c;->f:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/aispeech/common/c;->g:Ljava/util/Date;

    return-void
.end method

.method private static a()V
    .locals 2

    sget-object v0, Lcom/aispeech/common/c;->e:Ljava/io/FileWriter;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/aispeech/common/c;->e:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/aispeech/common/c;->e:Ljava/io/FileWriter;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/aispeech/common/c;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    sput v0, Lcom/aispeech/common/c;->d:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "aispeech.log"

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/aispeech/common/Util;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    sput-object v1, Lcom/aispeech/common/c;->e:Ljava/io/FileWriter;

    const-string v0, "*****************************************************\n"

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    sget-object v0, Lcom/aispeech/common/c;->g:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    sget-object v0, Lcom/aispeech/common/c;->e:Ljava/io/FileWriter;

    sget-object v1, Lcom/aispeech/common/c;->g:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    sget-object v0, Lcom/aispeech/common/c;->e:Ljava/io/FileWriter;

    const-string v1, "*****************************************************\n"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    sget-object v0, Lcom/aispeech/common/c;->e:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/aispeech/common/c;->c:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {}, Lcom/aispeech/common/c;->a()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x3

    sget-boolean v0, Lcom/aispeech/common/c;->b:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/aispeech/common/c;->c:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/aispeech/common/c;->d:I

    if-lt v1, v0, :cond_0

    const-string v0, "DEBUG"

    invoke-static {v0, p0, p1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/aispeech/common/c;->a:Z

    if-eqz v0, :cond_1

    invoke-static {v1, p0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v1, Lcom/aispeech/common/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/common/c;->e:Ljava/io/FileWriter;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/aispeech/common/c;->g:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    sget-object v0, Lcom/aispeech/common/c;->e:Ljava/io/FileWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/aispeech/common/c;->f:Ljava/text/SimpleDateFormat;

    sget-object v4, Lcom/aispeech/common/c;->g:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    sget-object v0, Lcom/aispeech/common/c;->e:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/aispeech/common/c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x4

    sget-boolean v0, Lcom/aispeech/common/c;->b:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/aispeech/common/c;->c:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/aispeech/common/c;->d:I

    if-lt v1, v0, :cond_0

    const-string v0, "INFO"

    invoke-static {v0, p0, p1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/aispeech/common/c;->a:Z

    if-eqz v0, :cond_1

    invoke-static {v1, p0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x5

    sget-boolean v0, Lcom/aispeech/common/c;->b:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/aispeech/common/c;->c:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/aispeech/common/c;->d:I

    if-lt v1, v0, :cond_0

    const-string v0, "WARN"

    invoke-static {v0, p0, p1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v1, p0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x6

    sget-boolean v0, Lcom/aispeech/common/c;->b:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/aispeech/common/c;->c:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/aispeech/common/c;->d:I

    if-lt v1, v0, :cond_0

    const-string v0, "ERROR"

    invoke-static {v0, p0, p1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v1, p0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
