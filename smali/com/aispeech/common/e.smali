.class public final Lcom/aispeech/common/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UploadUtil"

    sput-object v0, Lcom/aispeech/common/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/aispeech/speech/d;)V
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/aispeech/speech/AIUploadEngine;->getInstance(Landroid/content/Context;)Lcom/aispeech/speech/AIUploadEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/speech/AIUploadEngine;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/aispeech/speech/d;->w(Ljava/lang/String;)V

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v0, "phone1"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :cond_2
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, ""

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v0}, Lcom/aispeech/speech/d;->v(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/aispeech/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_4

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v0}, Lcom/aispeech/speech/d;->u(Ljava/lang/String;)V

    :cond_5
    invoke-static {p0}, Lcom/aispeech/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aispeech/speech/d;->t(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/aispeech/speech/AIUploadEngine;->getInstance(Landroid/content/Context;)Lcom/aispeech/speech/AIUploadEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/speech/AIUploadEngine;->getAiengineVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1, v0}, Lcom/aispeech/speech/d;->x(Ljava/lang/String;)V

    :cond_6
    const-string v0, "2.1.2"

    invoke-virtual {p1, v0}, Lcom/aispeech/speech/d;->y(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_2

    :cond_9
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/aispeech/a;Lcom/aispeech/tts/k;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/aispeech/common/e;->a:Ljava/lang/String;

    const-string v1, "uploadTtsJson"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "recordId"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "source"

    const-string v2, "ADAPT_AIENGINE"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "time"

    invoke-static {}, Lcom/aispeech/common/Util;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceId"

    invoke-virtual {p0}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aispeech/speech/AIUploadEngine;->getInstance(Landroid/content/Context;)Lcom/aispeech/speech/AIUploadEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aispeech/speech/AIUploadEngine;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "params"

    invoke-virtual {p1}, Lcom/aispeech/tts/k;->d()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "refText"

    invoke-virtual {p1}, Lcom/aispeech/tts/k;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "log"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v3, "output_aiengine"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "clientTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "result"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/aispeech/common/e;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/AIUploadEngine;->getInstance(Landroid/content/Context;)Lcom/aispeech/speech/AIUploadEngine;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/aispeech/speech/AIUploadEngine;->postJSON(Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/aispeech/a;Lcom/aispeech/speech/d;)V
    .locals 4

    sget-object v0, Lcom/aispeech/common/e;->a:Ljava/lang/String;

    const-string v1, "uploadMixAsrResultJson"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "source"

    const-string v1, "ADAPT_AIENGINE"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "time"

    invoke-static {}, Lcom/aispeech/common/Util;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceId"

    invoke-virtual {p1}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/aispeech/speech/AIUploadEngine;->getInstance(Landroid/content/Context;)Lcom/aispeech/speech/AIUploadEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aispeech/speech/AIUploadEngine;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "params"

    invoke-virtual {p2}, Lcom/aispeech/speech/d;->d()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "isMixAsrResult"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "log"

    const-string v2, "result"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "input_aiengine"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clientTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "result"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/aispeech/common/e;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/AIUploadEngine;->getInstance(Landroid/content/Context;)Lcom/aispeech/speech/AIUploadEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/aispeech/speech/AIUploadEngine;->postJSON(Lorg/json/JSONObject;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Lorg/json/JSONObject;Lcom/aispeech/a;Lcom/aispeech/speech/d;)V
    .locals 4

    sget-object v0, Lcom/aispeech/common/e;->a:Ljava/lang/String;

    const-string v1, "uploadCloudAsrResultJson"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "source"

    const-string v1, "ADAPT_AIENGINE"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "time"

    invoke-static {}, Lcom/aispeech/common/Util;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceId"

    invoke-virtual {p1}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/aispeech/speech/AIUploadEngine;->getInstance(Landroid/content/Context;)Lcom/aispeech/speech/AIUploadEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aispeech/speech/AIUploadEngine;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "params"

    invoke-virtual {p2}, Lcom/aispeech/speech/d;->d()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "log"

    const-string v2, "result"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "input_aiengine"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clientTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "result"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/aispeech/common/e;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/AIUploadEngine;->getInstance(Landroid/content/Context;)Lcom/aispeech/speech/AIUploadEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/aispeech/speech/AIUploadEngine;->postJSON(Lorg/json/JSONObject;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
