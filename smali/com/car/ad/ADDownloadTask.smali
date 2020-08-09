.class Lcom/car/ad/ADDownloadTask;
.super Ljava/lang/Object;
.source "ADDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/ad/ADDownloadTask$ADDownloadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarAD_ADDownloadTask"


# instance fields
.field private mListener:Lcom/car/ad/ADDownloadTask$ADDownloadListener;

.field private mSavePath:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/car/ad/ADDownloadTask;->mSavePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/car/ad/ADDownloadTask;->mUrl:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/car/ad/ADDownloadTask$ADDownloadListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/car/ad/ADDownloadTask;->mSavePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/car/ad/ADDownloadTask;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/ad/ADDownloadTask;->mListener:Lcom/car/ad/ADDownloadTask$ADDownloadListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADDownloadTask;->mListener:Lcom/car/ad/ADDownloadTask$ADDownloadListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADDownloadTask;->mListener:Lcom/car/ad/ADDownloadTask$ADDownloadListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/car/ad/ADDownloadTask$ADDownloadListener;->onDownloadStart(Lcom/car/ad/ADDownloadTask;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADDownloadTask;->mListener:Lcom/car/ad/ADDownloadTask$ADDownloadListener;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/car/ad/ADDownloadTask$ADDownloadListener;->onDownloadProgress(Lcom/car/ad/ADDownloadTask;I)V

    :cond_0
    const/16 v21, 0x0

    const/4 v11, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADDownloadTask;->mUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v20, Ljava/net/URL;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/ad/ADDownloadTask;->mSavePath:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".tmp"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v22, "CarAD_ADDownloadTask"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "pathName = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v17, Ljava/io/File;

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_2

    const-string v22, "CarAD_ADDownloadTask"

    const-string v23, "file exists,return"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v22, "CarAD_ADDownloadTask"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "dir = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->createNewFile()Z

    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v22, 0x400

    :try_start_2
    move/from16 v0, v22

    new-array v3, v0, [B

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v19

    const/4 v4, 0x0

    const/4 v15, 0x0

    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    move-result v10

    :goto_1
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v10, v0, :cond_6

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v3, v0, v10}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v4, v10

    int-to-float v0, v4

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    mul-float v22, v22, v23

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x42c80000    # 100.0f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v13, v0

    if-le v13, v15, :cond_5

    move v15, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADDownloadTask;->mListener:Lcom/car/ad/ADDownloadTask$ADDownloadListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADDownloadTask;->mListener:Lcom/car/ad/ADDownloadTask$ADDownloadListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v15}, Lcom/car/ad/ADDownloadTask$ADDownloadListener;->onDownloadProgress(Lcom/car/ad/ADDownloadTask;I)V

    :cond_5
    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    move-result v10

    goto :goto_1

    :cond_6
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADDownloadTask;->mListener:Lcom/car/ad/ADDownloadTask$ADDownloadListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADDownloadTask;->mListener:Lcom/car/ad/ADDownloadTask$ADDownloadListener;

    move-object/from16 v22, v0

    const/16 v23, 0x64

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/car/ad/ADDownloadTask$ADDownloadListener;->onDownloadProgress(Lcom/car/ad/ADDownloadTask;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADDownloadTask;->mListener:Lcom/car/ad/ADDownloadTask$ADDownloadListener;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/car/ad/ADDownloadTask$ADDownloadListener;->onDownloadEnd(Lcom/car/ad/ADDownloadTask;Z)V

    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_8
    if-eqz v21, :cond_c

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v11, v12

    goto/16 :goto_0

    :catch_0
    move-exception v7

    :goto_2
    :try_start_3
    invoke-virtual {v7}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADDownloadTask;->mListener:Lcom/car/ad/ADDownloadTask$ADDownloadListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADDownloadTask;->mListener:Lcom/car/ad/ADDownloadTask$ADDownloadListener;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/car/ad/ADDownloadTask$ADDownloadListener;->onDownloadEnd(Lcom/car/ad/ADDownloadTask;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :catch_1
    move-exception v7

    :goto_3
    :try_start_4
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADDownloadTask;->mListener:Lcom/car/ad/ADDownloadTask$ADDownloadListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADDownloadTask;->mListener:Lcom/car/ad/ADDownloadTask$ADDownloadListener;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/car/ad/ADDownloadTask$ADDownloadListener;->onDownloadEnd(Lcom/car/ad/ADDownloadTask;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_a
    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :catchall_0
    move-exception v22

    :goto_4
    if-eqz v21, :cond_b

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    throw v22

    :catchall_1
    move-exception v22

    move-object v11, v12

    goto :goto_4

    :catch_2
    move-exception v7

    move-object v11, v12

    goto :goto_3

    :catch_3
    move-exception v7

    move-object v11, v12

    goto :goto_2

    :cond_c
    move-object v11, v12

    goto/16 :goto_0
.end method
