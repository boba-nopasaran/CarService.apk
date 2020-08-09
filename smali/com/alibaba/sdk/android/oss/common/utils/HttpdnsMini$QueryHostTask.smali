.class Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;
.super Ljava/lang/Object;
.source "HttpdnsMini.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHostTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private hasRetryed:Z

.field private hostName:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->this$0:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->hasRetryed:Z

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->hostName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 22

    const-string v2, "203.107.1.1"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "http://"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "181345"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "/d?host="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->hostName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v7, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[httpdnsmini] - buildUrl: "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    :try_start_0
    new-instance v15, Ljava/net/URL;

    invoke-direct {v15, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    const/16 v15, 0x2710

    invoke-virtual {v3, v15}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v15, 0x2710

    invoke-virtual {v3, v15}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v15, v0, :cond_3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[httpdnsmini] - responseCodeNot 200, but: "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v7, :cond_1

    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->hasRetryed:Z

    if-nez v15, :cond_a

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->hasRetryed:Z

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->call()Ljava/lang/String;

    move-result-object v8

    :cond_2
    :goto_1
    return-object v8

    :cond_3
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    new-instance v14, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-direct {v15, v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_3
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->isEnableLog()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    if-eqz v7, :cond_1

    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_5
    :try_start_5
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v15, "host"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v15, "ttl"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v15, "ips"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[httpdnsmini] - ips:"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    if-eqz v5, :cond_0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lez v15, :cond_0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-nez v15, :cond_6

    const-wide/16 v16, 0x1e

    :cond_6
    new-instance v6, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->this$0:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    invoke-direct {v6, v15}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;-><init>(Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;)V

    if-nez v9, :cond_8

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v6, v5}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->setHostName(Ljava/lang/String;)V

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->setTtl(J)V

    invoke-virtual {v6, v8}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->setIp(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->setQueryTime(J)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[httpdnsmini] - resolve result:"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->this$0:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    invoke-static {v15}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->access$000(Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v15

    const/16 v18, 0x64

    move/from16 v0, v18

    if-ge v15, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->this$0:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    invoke-static {v15}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->access$000(Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->hostName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v15, v0, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    if-eqz v7, :cond_2

    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_8
    const/4 v15, 0x0

    :try_start_7
    invoke-virtual {v9, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v8

    goto :goto_3

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_0
    move-exception v15

    if-eqz v7, :cond_9

    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_9
    :goto_4
    throw v15

    :catch_4
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_1
.end method
