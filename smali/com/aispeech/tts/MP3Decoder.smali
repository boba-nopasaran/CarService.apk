.class public Lcom/aispeech/tts/MP3Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "lame"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "MP3Decoder"

    const-string v1, "Please check useful liblame.so, and put it in your libs dir!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native decode([BI[S[S)I
.end method

.method public static native destroy()V
.end method

.method public static native init()V
.end method


# virtual methods
.method public final declared-synchronized a([BI[S[S)I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MP3Decoder"

    const-string v1, "decode"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Lcom/aispeech/tts/MP3Decoder;->decode([BI[S[S)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MP3Decoder"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/tts/MP3Decoder;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MP3Decoder"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/tts/MP3Decoder;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
