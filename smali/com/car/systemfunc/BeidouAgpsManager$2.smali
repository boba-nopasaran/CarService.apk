.class Lcom/car/systemfunc/BeidouAgpsManager$2;
.super Ljava/lang/Object;
.source "BeidouAgpsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/BeidouAgpsManager;->doFetchDataGoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/BeidouAgpsManager;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/BeidouAgpsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/BeidouAgpsManager$2;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/systemfunc/BeidouAgpsManager$2;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    iget-object v8, v11, Lcom/car/systemfunc/BeidouAgpsManager;->GOKE_SERVER:Ljava/lang/String;

    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    new-array v2, v5, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_0
    sub-int v11, v5, v6

    invoke-virtual {v4, v2, v6, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_1

    sget-object v11, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "data read = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v6, v7

    if-ne v6, v5, :cond_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/systemfunc/BeidouAgpsManager$2;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    invoke-virtual {v11, v2}, Lcom/car/systemfunc/BeidouAgpsManager;->doWrite([B)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/systemfunc/BeidouAgpsManager$2;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/car/systemfunc/BeidouAgpsManager;->mEverUpdate:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/systemfunc/BeidouAgpsManager$2;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v11, Lcom/car/systemfunc/BeidouAgpsManager;->mLastUpdateTime:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/systemfunc/BeidouAgpsManager$2;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    invoke-virtual {v11, v2}, Lcom/car/systemfunc/BeidouAgpsManager;->backupData2Cache([B)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/systemfunc/BeidouAgpsManager$2;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/car/systemfunc/BeidouAgpsManager;->mCacheUsed:Z

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    :goto_1
    sget-object v11, Lcom/car/systemfunc/BeidouAgpsManager;->TAG:Ljava/lang/String;

    const-string v12, "Maybe network error and retry in 30 seconds"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/systemfunc/BeidouAgpsManager$2;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    invoke-virtual {v11}, Lcom/car/systemfunc/BeidouAgpsManager;->usingCacheData()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/systemfunc/BeidouAgpsManager$2;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    iget-object v11, v11, Lcom/car/systemfunc/BeidouAgpsManager;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x65

    const-wide/16 v14, 0x7530

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception v11

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v11
.end method
