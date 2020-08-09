.class public Lcom/aispeech/export/engines/AILocalASREngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/export/engines/AILocalASREngine$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field a:Z

.field private b:Lcom/aispeech/speech/b;

.field private c:Lcom/aispeech/a;

.field private d:Lcom/aispeech/b/b;

.field private e:Lcom/aispeech/c/j;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/aispeech/export/engines/AILocalASREngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aispeech/export/engines/AILocalASREngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aispeech/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/aispeech/a;-><init>(Z)V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    const-string v1, "localasr"

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->n(Ljava/lang/String;)V

    new-instance v0, Lcom/aispeech/b/b;

    invoke-direct {v0}, Lcom/aispeech/b/b;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->d:Lcom/aispeech/b/b;

    new-instance v0, Lcom/aispeech/c/j;

    invoke-direct {v0}, Lcom/aispeech/c/j;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    new-instance v0, Lcom/aispeech/speech/b;

    invoke-direct {v0}, Lcom/aispeech/speech/b;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->b:Lcom/aispeech/speech/b;

    return-void
.end method

.method public static createInstance()Lcom/aispeech/export/engines/AILocalASREngine;
    .locals 1

    new-instance v0, Lcom/aispeech/export/engines/AILocalASREngine;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AILocalASREngine;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/aispeech/export/engines/AILocalASREngine;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/aispeech/export/engines/AILocalASREngine;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AILocalASREngine;-><init>()V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->a:Z

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->b:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->b:Lcom/aispeech/speech/b;

    invoke-virtual {v0}, Lcom/aispeech/speech/b;->f()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aispeech/export/engines/AILocalASREngine;->a:Z

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->b:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->b:Lcom/aispeech/speech/b;

    invoke-virtual {v0}, Lcom/aispeech/speech/b;->i()V

    :cond_0
    iput-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->h:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/aispeech/export/engines/AILocalASREngine;->i:Z

    iput-boolean v1, p0, Lcom/aispeech/export/engines/AILocalASREngine;->j:Z

    return-void
.end method

.method public feedData([B)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->b:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->b:Lcom/aispeech/speech/b;

    invoke-virtual {v0, p1}, Lcom/aispeech/speech/b;->a([B)V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/aispeech/export/listeners/AIASRListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p3}, Lcom/aispeech/a;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p4}, Lcom/aispeech/a;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalASREngine;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "AISpeech Error"

    const-string v2, "asr res/net bin file name not set!"

    invoke-static {v0, v2}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/aispeech/a;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->d:Lcom/aispeech/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/b/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->d:Lcom/aispeech/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/b/b;->d(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->d:Lcom/aispeech/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/b/b;->a(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalASREngine;->d:Lcom/aispeech/b/b;

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->a(Lcom/aispeech/b/c;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->b:Lcom/aispeech/speech/b;

    new-instance v1, Lcom/aispeech/export/engines/AILocalASREngine$a;

    invoke-direct {v1, p0, p2}, Lcom/aispeech/export/engines/AILocalASREngine$a;-><init>(Lcom/aispeech/export/engines/AILocalASREngine;Lcom/aispeech/export/listeners/AIASRListener;)V

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/c;Lcom/aispeech/a;)V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->i:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->j:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-array v0, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->h:Ljava/lang/String;

    aput-object v2, v0, v3

    goto/16 :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->i:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    new-array v0, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->g:Ljava/lang/String;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->h:Ljava/lang/String;

    aput-object v2, v0, v4

    goto/16 :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->j:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    new-array v0, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->f:Ljava/lang/String;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->h:Ljava/lang/String;

    aput-object v2, v0, v4

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->f:Ljava/lang/String;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->g:Ljava/lang/String;

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->h:Ljava/lang/String;

    aput-object v2, v0, v5

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->d:Lcom/aispeech/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v2}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/b/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->d:Lcom/aispeech/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v2}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/b/b;->d(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->d:Lcom/aispeech/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v2}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/b/b;->a(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public isBusy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->a:Z

    return v0
.end method

.method public notifyWakeup()V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/aispeech/c/j;->a(J)V

    return-void
.end method

.method public setBeam(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->c(I)V

    return-void
.end method

.method public setCancelScore(F)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->a(F)V

    return-void
.end method

.method public setCmdNetBin(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/aispeech/export/engines/AILocalASREngine;->setCmdNetBin(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCmdNetBin(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalASREngine;->g:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->j:Z

    return-void
.end method

.method public setConfirmScore(F)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->b(F)V

    return-void
.end method

.method public setContextId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setDBable(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalASREngine;->k:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setDeviceInfo(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public setDisableComm(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->g(Z)V

    return-void
.end method

.method public setEchoWavePath(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/aispeech/common/AIConstant;->NEW_ECHO_ENABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->p(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGrammarId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setHyps(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->b(I)V

    return-void
.end method

.method public setListener(Lcom/aispeech/export/listeners/AIASRListener;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->b:Lcom/aispeech/speech/b;

    new-instance v1, Lcom/aispeech/export/engines/AILocalASREngine$a;

    invoke-direct {v1, p0, p1}, Lcom/aispeech/export/engines/AILocalASREngine$a;-><init>(Lcom/aispeech/export/engines/AILocalASREngine;Lcom/aispeech/export/listeners/AIASRListener;)V

    invoke-virtual {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/c;)V

    return-void
.end method

.method public setLuaResName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxSpeechTimeS(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->e(I)V

    return-void
.end method

.method public setNBest(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->a(I)V

    return-void
.end method

.method public setNetBin(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/aispeech/export/engines/AILocalASREngine;->setNetBin(Ljava/lang/String;Z)V

    return-void
.end method

.method public setNetBin(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalASREngine;->f:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/aispeech/export/engines/AILocalASREngine;->i:Z

    return-void
.end method

.method public setNetWorkState(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->b:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->b:Lcom/aispeech/speech/b;

    invoke-virtual {v0, p1}, Lcom/aispeech/speech/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setNoSpeechTimeOut(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->f(I)V

    return-void
.end method

.method public setOneShotIntervalTimeThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->i(I)V

    return-void
.end method

.method public setPauseTime(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->a(I)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->h(I)V

    return-void
.end method

.method public setRTMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->d(I)V

    return-void
.end method

.method public setResBin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalASREngine;->h:Ljava/lang/String;

    return-void
.end method

.method public setResName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->g(Ljava/lang/String;)V

    return-void
.end method

.method public setResStoragePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->o(Ljava/lang/String;)V

    return-void
.end method

.method public setSampleRate(Lcom/aispeech/AISampleRate;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0}, Lcom/aispeech/a;->d()Lcom/aispeech/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aispeech/d/a;->a(Lcom/aispeech/AISampleRate;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->a(Lcom/aispeech/AISampleRate;)V

    return-void
.end method

.method public setSaveAudioPath(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSlotContent([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->b([Ljava/lang/String;)V

    return-void
.end method

.method public setSlotName([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->a([Ljava/lang/String;)V

    return-void
.end method

.method public setTmpDir(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->l(Ljava/lang/String;)V

    return-void
.end method

.method public setTmpDirMaxSize(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->e(I)V

    return-void
.end method

.method public setUploadEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Z)V

    return-void
.end method

.method public setUploadInterval(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->f(I)V

    return-void
.end method

.method public setUploadServer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->m(Ljava/lang/String;)V

    return-void
.end method

.method public setUseConf(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->d(Z)V

    return-void
.end method

.method public setUseCustomFeed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->k(Z)V

    return-void
.end method

.method public setUseForceout(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->f(Z)V

    return-void
.end method

.method public setUseIndividualThread(Z)V
    .locals 0

    return-void
.end method

.method public setUseOneShotFunction(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->m(Z)V

    return-void
.end method

.method public setUsePinyin(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->e(Z)V

    return-void
.end method

.method public setUseXbnfRec(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->c(Z)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->s(Ljava/lang/String;)V

    return-void
.end method

.method public setVadEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->a(Z)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->i(Z)V

    return-void
.end method

.method public setVadResource(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setVolEnable(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->j(Z)V

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->a:Z

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0}, Lcom/aispeech/c/j;->p()V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->b:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->b:Lcom/aispeech/speech/b;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/d;)V

    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->b:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalASREngine;->b:Lcom/aispeech/speech/b;

    invoke-virtual {v0}, Lcom/aispeech/speech/b;->e()V

    :cond_0
    return-void
.end method
