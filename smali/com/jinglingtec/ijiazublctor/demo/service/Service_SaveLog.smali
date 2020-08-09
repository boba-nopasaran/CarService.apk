.class public Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;
.super Landroid/app/Service;
.source "Service_SaveLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Service_SaveLog"


# instance fields
.field mStub:Lcom/jinglingtec/ijiazublctor/demo/service/SaveLog$Stub;

.field private runing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;->runing:Z

    new-instance v0, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog$1;

    invoke-direct {v0, p0}, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog$1;-><init>(Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;)V

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;->mStub:Lcom/jinglingtec/ijiazublctor/demo/service/SaveLog$Stub;

    return-void
.end method

.method static synthetic access$002(Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;->runing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;)V
    .locals 0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;->startSavelogThread()V

    return-void
.end method

.method public static getCurrentTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isHavePath(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method private startSavelogThread()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "save_log"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;->mStub:Lcom/jinglingtec/ijiazublctor/demo/service/SaveLog$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;->runing:Z

    const-string v0, "Service_SaveLog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/demo/service/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;->startSavelogThread()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    const-string v0, "Service_SaveLog"

    const-string v1, "onstart"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/demo/service/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "Service_SaveLog"

    const-string v1, "onstartCommand"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/demo/service/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "Service_SaveLog"

    const-string v1, "onunbind"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/demo/service/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;->stopService(Landroid/content/Intent;)Z

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 12

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/ijiazu/logs/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "Service_SaveLog"

    invoke-static {v10, v8}, Lcom/jinglingtec/ijiazublctor/demo/service/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v11}, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;->getCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    invoke-static {v8}, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;->isHavePath(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "logcat -v time *:v  "

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-boolean v10, p0, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;->runing:Z

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    move-object v2, v3

    move-object v0, v1

    :goto_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v2, v3

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v9

    goto :goto_1

    :catch_2
    move-exception v9

    move-object v0, v1

    goto :goto_1
.end method
