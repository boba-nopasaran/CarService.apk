.class public Lcom/aispeech/speech/AIAuthEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "AIAuthEngine"

.field private static e:Lcom/aispeech/speech/AIAuthEngine;


# instance fields
.field private a:Lcom/aispeech/AIEngine;

.field private b:Lcom/aispeech/a;

.field private c:Lorg/json/JSONObject;

.field private d:Lcom/aispeech/export/listeners/AIAuthListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aispeech/a;

    invoke-direct {v0, p1, v1, v1}, Lcom/aispeech/a;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/aispeech/speech/AIAuthEngine;
    .locals 1

    sget-object v0, Lcom/aispeech/speech/AIAuthEngine;->e:Lcom/aispeech/speech/AIAuthEngine;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/speech/AIAuthEngine;

    invoke-direct {v0, p0}, Lcom/aispeech/speech/AIAuthEngine;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aispeech/speech/AIAuthEngine;->e:Lcom/aispeech/speech/AIAuthEngine;

    :cond_0
    sget-object v0, Lcom/aispeech/speech/AIAuthEngine;->e:Lcom/aispeech/speech/AIAuthEngine;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/aispeech/speech/AIAuthEngine;->a:Lcom/aispeech/AIEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/AIAuthEngine;->a:Lcom/aispeech/AIEngine;

    invoke-virtual {v0}, Lcom/aispeech/AIEngine;->d()I

    iput-object v1, p0, Lcom/aispeech/speech/AIAuthEngine;->a:Lcom/aispeech/AIEngine;

    :cond_0
    iput-object v1, p0, Lcom/aispeech/speech/AIAuthEngine;->d:Lcom/aispeech/export/listeners/AIAuthListener;

    iput-object v1, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    sput-object v1, Lcom/aispeech/speech/AIAuthEngine;->e:Lcom/aispeech/speech/AIAuthEngine;

    return-void
.end method

.method public doAuth()Z
    .locals 7

    const/16 v6, 0x400

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/aispeech/speech/AIAuthEngine;->a:Lcom/aispeech/AIEngine;

    if-nez v2, :cond_1

    const-string v1, "Please init engine first!"

    const-string v2, "AIAuthEngine"

    invoke-static {v2, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/speech/AIAuthEngine;->d:Lcom/aispeech/export/listeners/AIAuthListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/aispeech/speech/AIAuthEngine;->d:Lcom/aispeech/export/listeners/AIAuthListener;

    invoke-interface {v2, v1}, Lcom/aispeech/export/listeners/AIAuthListener;->onAuthFailed(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-array v2, v6, [B

    iget-object v3, p0, Lcom/aispeech/speech/AIAuthEngine;->c:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/aispeech/speech/AIAuthEngine;->a:Lcom/aispeech/AIEngine;

    invoke-virtual {v3}, Lcom/aispeech/AIEngine;->a()J

    move-result-wide v4

    const/16 v3, 0xb

    invoke-static {v4, v5, v3, v2, v6}, Lcom/aispeech/AIEngine;->aiengine_opt(JI[BI)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    const-string v1, "opt: 11 not support!"

    const-string v2, "AIAuthEngine"

    invoke-static {v2, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/speech/AIAuthEngine;->d:Lcom/aispeech/export/listeners/AIAuthListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/aispeech/speech/AIAuthEngine;->d:Lcom/aispeech/export/listeners/AIAuthListener;

    invoke-interface {v2, v1}, Lcom/aispeech/export/listeners/AIAuthListener;->onAuthFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "AIAuthEngine"

    invoke-static {v2, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "success"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/aispeech/speech/AIAuthEngine;->d:Lcom/aispeech/export/listeners/AIAuthListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/speech/AIAuthEngine;->d:Lcom/aispeech/export/listeners/AIAuthListener;

    invoke-interface {v1}, Lcom/aispeech/export/listeners/AIAuthListener;->onAuthSuccess()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AIAuthEngine"

    invoke-static {v2, v1}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const-string v1, "\u6388\u6743\u5931\u8d25"

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/aispeech/speech/AIAuthEngine;->d:Lcom/aispeech/export/listeners/AIAuthListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/aispeech/speech/AIAuthEngine;->d:Lcom/aispeech/export/listeners/AIAuthListener;

    invoke-interface {v2, v1}, Lcom/aispeech/export/listeners/AIAuthListener;->onAuthFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p2}, Lcom/aispeech/a;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0}, Lcom/aispeech/a;->c()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v1}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".serialNum"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".serialNum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v1, v0}, Lcom/aispeech/a;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0}, Lcom/aispeech/a;->e()Lcom/aispeech/c;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v1}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/c;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "70913\u8bc1\u4e66\u6587\u4ef6\u51c6\u5907\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5provision.file\u6587\u4ef6\u662f\u5426\u5b58\u653e\u5728assets\u76ee\u5f55\u4e0b"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v1}, Lcom/aispeech/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/Util;->copyResource(Landroid/content/Context;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v2}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v2}, Lcom/aispeech/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->c(Ljava/lang/String;)V

    :goto_1
    const-string v0, "AIAuthEngine"

    iget-object v1, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v1}, Lcom/aispeech/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aispeech/AIEngine;

    invoke-direct {v0}, Lcom/aispeech/AIEngine;-><init>()V

    iput-object v0, p0, Lcom/aispeech/speech/AIAuthEngine;->a:Lcom/aispeech/AIEngine;

    iget-object v0, p0, Lcom/aispeech/speech/AIAuthEngine;->a:Lcom/aispeech/AIEngine;

    iget-object v1, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v1}, Lcom/aispeech/a;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v2}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/AIEngine;->a(Ljava/lang/String;Landroid/content/Context;)J

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/aispeech/speech/AIAuthEngine;->c:Lorg/json/JSONObject;

    :try_start_1
    iget-object v0, p0, Lcom/aispeech/speech/AIAuthEngine;->c:Lorg/json/JSONObject;

    const-string v1, "activationKey"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v2}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v2}, Lcom/aispeech/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->c(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public isAuthed()Z
    .locals 6

    const/16 v5, 0x400

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aispeech/speech/AIAuthEngine;->a:Lcom/aispeech/AIEngine;

    if-nez v1, :cond_1

    const-string v1, "AIAuthEngine"

    const-string v2, "Pls init engine first!"

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-array v1, v5, [B

    iget-object v2, p0, Lcom/aispeech/speech/AIAuthEngine;->c:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v2, "AIAuthEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Input:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aispeech/speech/AIAuthEngine;->c:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/speech/AIAuthEngine;->a:Lcom/aispeech/AIEngine;

    invoke-virtual {v2}, Lcom/aispeech/AIEngine;->a()J

    move-result-wide v2

    const/16 v4, 0xa

    invoke-static {v2, v3, v4, v1, v5}, Lcom/aispeech/AIEngine;->aiengine_opt(JI[BI)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const-string v1, "AIAuthEngine"

    const-string v2, "opt: 10 not support!"

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "AIAuthEngine"

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "success"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDBable(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setOnAuthListener(Lcom/aispeech/export/listeners/AIAuthListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/AIAuthEngine;->d:Lcom/aispeech/export/listeners/AIAuthListener;

    return-void
.end method

.method public setResStoragePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/AIAuthEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->o(Ljava/lang/String;)V

    return-void
.end method
