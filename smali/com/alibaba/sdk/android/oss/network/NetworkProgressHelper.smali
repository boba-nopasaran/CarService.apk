.class public Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper;
.super Ljava/lang/Object;
.source "NetworkProgressHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProgressRequestBody(Ljava/io/InputStream;JLjava/lang/String;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;
    .locals 7

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;-><init>(Ljava/io/InputStream;JLjava/lang/String;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V

    return-object v0
.end method

.method public static addProgressResponseListener(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lokhttp3/OkHttpClient;
    .locals 3

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper$1;

    invoke-direct {v2, p1}, Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper$1;-><init>(Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
