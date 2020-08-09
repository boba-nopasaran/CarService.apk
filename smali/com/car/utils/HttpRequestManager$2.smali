.class Lcom/car/utils/HttpRequestManager$2;
.super Ljava/lang/Object;
.source "HttpRequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/utils/HttpRequestManager;->requestHttps(Ljava/lang/String;Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/utils/HttpRequestManager;

.field final synthetic val$listener:Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/utils/HttpRequestManager;Ljava/lang/String;Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/car/utils/HttpRequestManager$2;->this$0:Lcom/car/utils/HttpRequestManager;

    iput-object p2, p0, Lcom/car/utils/HttpRequestManager$2;->val$str:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/utils/HttpRequestManager$2;->val$listener:Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v7, 0x0

    :try_start_0
    const-string v8, "TLS"

    invoke-static {v8}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljavax/net/ssl/TrustManager;

    const/4 v10, 0x0

    new-instance v11, Lcom/car/utils/HttpRequestManager$MyTrustManager;

    invoke-direct {v11}, Lcom/car/utils/HttpRequestManager$MyTrustManager;-><init>()V

    aput-object v11, v9, v10

    new-instance v10, Ljava/security/SecureRandom;

    invoke-direct {v10}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4, v8, v9, v10}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    invoke-static {v8}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v8, Lcom/car/utils/HttpRequestManager$MyHostnameVerifier;

    invoke-direct {v8}, Lcom/car/utils/HttpRequestManager$MyHostnameVerifier;-><init>()V

    invoke-static {v8}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    new-instance v6, Ljava/net/URL;

    iget-object v8, p0, Lcom/car/utils/HttpRequestManager$2;->val$str:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v7, v0

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v8, Ljava/util/Scanner;

    invoke-direct {v8, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v9, "\\A"

    invoke-virtual {v8, v9}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Scanner;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v8, p0, Lcom/car/utils/HttpRequestManager$2;->val$listener:Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;

    invoke-interface {v8, v3}, Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;->onHttpResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    const-string v3, ""
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    iget-object v8, p0, Lcom/car/utils/HttpRequestManager$2;->val$listener:Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;

    const-string v9, ""

    invoke-interface {v8, v9}, Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;->onHttpResponse(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    iget-object v8, p0, Lcom/car/utils/HttpRequestManager$2;->val$listener:Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;

    const-string v9, ""

    invoke-interface {v8, v9}, Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;->onHttpResponse(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    iget-object v8, p0, Lcom/car/utils/HttpRequestManager$2;->val$listener:Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;

    const-string v9, ""

    invoke-interface {v8, v9}, Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;->onHttpResponse(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_1

    :catch_3
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V

    iget-object v8, p0, Lcom/car/utils/HttpRequestManager$2;->val$listener:Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;

    const-string v9, ""

    invoke-interface {v8, v9}, Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;->onHttpResponse(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception v8

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_2
    throw v8
.end method
