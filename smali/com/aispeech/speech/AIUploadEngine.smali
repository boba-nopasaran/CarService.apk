.class public Lcom/aispeech/speech/AIUploadEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "AIUploadEngine"

.field private static a:Z

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static f:Lcom/aispeech/speech/AIUploadEngine;


# instance fields
.field private d:Lcom/aispeech/AIEngine;

.field private e:Lcom/aispeech/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/aispeech/speech/AIUploadEngine;->a:Z

    const-string v0, ""

    sput-object v0, Lcom/aispeech/speech/AIUploadEngine;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/aispeech/speech/AIUploadEngine;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aispeech/a;

    invoke-direct {v0, p1, v1, v1}, Lcom/aispeech/a;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/aispeech/speech/AIUploadEngine;->e:Lcom/aispeech/a;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/aispeech/speech/AIUploadEngine;
    .locals 4

    sget-object v0, Lcom/aispeech/speech/AIUploadEngine;->f:Lcom/aispeech/speech/AIUploadEngine;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/speech/AIUploadEngine;

    invoke-direct {v0, p0}, Lcom/aispeech/speech/AIUploadEngine;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aispeech/speech/AIUploadEngine;->f:Lcom/aispeech/speech/AIUploadEngine;

    iget-object v1, v0, Lcom/aispeech/speech/AIUploadEngine;->e:Lcom/aispeech/a;

    invoke-virtual {v1}, Lcom/aispeech/a;->c()V

    new-instance v1, Lcom/aispeech/AIEngine;

    invoke-direct {v1}, Lcom/aispeech/AIEngine;-><init>()V

    iput-object v1, v0, Lcom/aispeech/speech/AIUploadEngine;->d:Lcom/aispeech/AIEngine;

    iget-object v1, v0, Lcom/aispeech/speech/AIUploadEngine;->e:Lcom/aispeech/a;

    invoke-virtual {v1}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/aispeech/speech/AIUploadEngine;->e:Lcom/aispeech/a;

    invoke-virtual {v2}, Lcom/aispeech/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/common/Util;->copyResource(Landroid/content/Context;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/aispeech/speech/AIUploadEngine;->e:Lcom/aispeech/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/aispeech/speech/AIUploadEngine;->e:Lcom/aispeech/a;

    invoke-virtual {v3}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/aispeech/speech/AIUploadEngine;->e:Lcom/aispeech/a;

    invoke-virtual {v3}, Lcom/aispeech/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/a;->c(Ljava/lang/String;)V

    const-string v1, "AIUploadEngine"

    iget-object v2, v0, Lcom/aispeech/speech/AIUploadEngine;->e:Lcom/aispeech/a;

    invoke-virtual {v2}, Lcom/aispeech/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/aispeech/speech/AIUploadEngine;->d:Lcom/aispeech/AIEngine;

    iget-object v2, v0, Lcom/aispeech/speech/AIUploadEngine;->e:Lcom/aispeech/a;

    invoke-virtual {v2}, Lcom/aispeech/a;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/aispeech/speech/AIUploadEngine;->e:Lcom/aispeech/a;

    invoke-virtual {v3}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/aispeech/AIEngine;->a(Ljava/lang/String;Landroid/content/Context;)J

    const-string v1, "NULL"

    iget-object v2, v0, Lcom/aispeech/speech/AIUploadEngine;->d:Lcom/aispeech/AIEngine;

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/aispeech/speech/AIUploadEngine;->d:Lcom/aispeech/AIEngine;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/AIEngine;->b([B)V

    :cond_0
    sget-object v0, Lcom/aispeech/speech/AIUploadEngine;->f:Lcom/aispeech/speech/AIUploadEngine;

    return-object v0
.end method


# virtual methods
.method public getAiengineVersion()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x40

    const/4 v4, 0x0

    sget-object v0, Lcom/aispeech/speech/AIUploadEngine;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/aispeech/speech/AIUploadEngine;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/AIUploadEngine;->d:Lcom/aispeech/AIEngine;

    if-eqz v0, :cond_1

    new-array v0, v5, [B

    iget-object v1, p0, Lcom/aispeech/speech/AIUploadEngine;->d:Lcom/aispeech/AIEngine;

    invoke-virtual {v1}, Lcom/aispeech/AIEngine;->a()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-static {v2, v3, v1, v0, v5}, Lcom/aispeech/AIEngine;->aiengine_opt(JI[BI)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const-string v0, "AIUploadEngine"

    const-string v1, "opt: 1 not support!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    new-array v2, v1, [B

    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lcom/aispeech/common/Util;->newUTF8String([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIUploadEngine"

    invoke-static {v1, v0}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "version"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aispeech/speech/AIUploadEngine;->c:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x400

    const/16 v5, 0x40

    const/4 v4, 0x0

    sget-object v0, Lcom/aispeech/speech/AIUploadEngine;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/aispeech/speech/AIUploadEngine;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/AIUploadEngine;->d:Lcom/aispeech/AIEngine;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/aispeech/speech/AIUploadEngine;->a:Z

    if-nez v0, :cond_2

    new-array v0, v6, [B

    iget-object v1, p0, Lcom/aispeech/speech/AIUploadEngine;->d:Lcom/aispeech/AIEngine;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aispeech/speech/AIUploadEngine;->d:Lcom/aispeech/AIEngine;

    invoke-virtual {v1}, Lcom/aispeech/AIEngine;->a()J

    move-result-wide v2

    const/16 v1, 0xa

    invoke-static {v2, v3, v1, v0, v6}, Lcom/aispeech/AIEngine;->aiengine_opt(JI[BI)I

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/aispeech/speech/AIUploadEngine;->a:Z

    :cond_2
    new-array v0, v5, [B

    iget-object v1, p0, Lcom/aispeech/speech/AIUploadEngine;->d:Lcom/aispeech/AIEngine;

    invoke-virtual {v1}, Lcom/aispeech/AIEngine;->a()J

    move-result-wide v2

    const/4 v1, 0x6

    invoke-static {v2, v3, v1, v0, v5}, Lcom/aispeech/AIEngine;->aiengine_opt(JI[BI)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    const-string v0, "AIUploadEngine"

    const-string v1, "opt: 6 not support!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, ""

    goto :goto_0

    :cond_4
    new-array v2, v1, [B

    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lcom/aispeech/common/Util;->newUTF8String([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aispeech/speech/AIUploadEngine;->b:Ljava/lang/String;

    const-string v1, "AIUploadEngine"

    invoke-static {v1, v0}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public postJSON(Lorg/json/JSONObject;)V
    .locals 5

    iget-object v0, p0, Lcom/aispeech/speech/AIUploadEngine;->d:Lcom/aispeech/AIEngine;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const-string v0, "AIUploadEngine"

    const-string v1, "post log failed!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "AIUploadEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "post:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/speech/AIUploadEngine;->d:Lcom/aispeech/AIEngine;

    invoke-virtual {v1}, Lcom/aispeech/AIEngine;->a()J

    move-result-wide v2

    const/4 v1, 0x5

    array-length v4, v0

    invoke-static {v2, v3, v1, v0, v4}, Lcom/aispeech/AIEngine;->aiengine_opt(JI[BI)I

    move-result v0

    const-string v1, "AIUploadEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uploadRet: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "AIUploadEngine"

    const-string v1, "upload result failed"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
