.class public Lcom/aispeech/export/engines/AIMixASREngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/export/engines/AIMixASREngine$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AIMixASREngine"


# instance fields
.field a:Z

.field private b:Lcom/aispeech/speech/a;

.field private c:Lcom/aispeech/a;

.field private d:Lcom/aispeech/a;

.field private e:Lcom/aispeech/c/j;

.field private f:Lcom/aispeech/c/e;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->m:Z

    new-instance v0, Lcom/aispeech/a;

    invoke-direct {v0, v1}, Lcom/aispeech/a;-><init>(Z)V

    iput-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    new-instance v0, Lcom/aispeech/a;

    invoke-direct {v0, v1}, Lcom/aispeech/a;-><init>(Z)V

    iput-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    new-instance v0, Lcom/aispeech/c/e;

    invoke-direct {v0}, Lcom/aispeech/c/e;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    new-instance v0, Lcom/aispeech/c/j;

    invoke-direct {v0}, Lcom/aispeech/c/j;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    new-instance v0, Lcom/aispeech/speech/a;

    invoke-direct {v0}, Lcom/aispeech/speech/a;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    return-void
.end method

.method public static createInstance()Lcom/aispeech/export/engines/AIMixASREngine;
    .locals 1

    new-instance v0, Lcom/aispeech/export/engines/AIMixASREngine;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AIMixASREngine;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/aispeech/export/engines/AIMixASREngine;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/aispeech/export/engines/AIMixASREngine;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AIMixASREngine;-><init>()V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const-string v0, "AIMixASREngine"

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->a:Z

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    invoke-virtual {v0}, Lcom/aispeech/speech/a;->b()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aispeech/export/engines/AIMixASREngine;->a:Z

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    invoke-virtual {v0}, Lcom/aispeech/speech/a;->e()V

    :cond_0
    iput-object v2, p0, Lcom/aispeech/export/engines/AIMixASREngine;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/aispeech/export/engines/AIMixASREngine;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/aispeech/export/engines/AIMixASREngine;->i:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/aispeech/export/engines/AIMixASREngine;->j:Z

    iput-boolean v1, p0, Lcom/aispeech/export/engines/AIMixASREngine;->k:Z

    return-void
.end method

.method public feedData([B)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/speech/a;->a([B)V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/aispeech/export/listeners/AIASRListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p3}, Lcom/aispeech/a;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p4}, Lcom/aispeech/a;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    iget-object v1, p0, Lcom/aispeech/export/engines/AIMixASREngine;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0}, Lcom/aispeech/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    const-string v1, "ws://s.api.aispeech.com:1028,ws://s.api.aispeech.com:80"

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->k(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p3}, Lcom/aispeech/a;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p4}, Lcom/aispeech/a;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    iget-object v1, p0, Lcom/aispeech/export/engines/AIMixASREngine;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    iget-boolean v1, p0, Lcom/aispeech/export/engines/AIMixASREngine;->m:Z

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->b(Z)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    iget-boolean v1, p0, Lcom/aispeech/export/engines/AIMixASREngine;->m:Z

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->b(Z)V

    new-instance v1, Lcom/aispeech/b/b;

    invoke-direct {v1}, Lcom/aispeech/b/b;-><init>()V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "AISpeech Error"

    const-string v3, "asr res/net bin file name not set!"

    invoke-static {v0, v3}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/aispeech/a;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/aispeech/export/engines/AIMixASREngine;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aispeech/b/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/aispeech/export/engines/AIMixASREngine;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aispeech/b/b;->d(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/aispeech/export/engines/AIMixASREngine;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aispeech/b/b;->a(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->a(Lcom/aispeech/b/c;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    new-instance v1, Lcom/aispeech/export/engines/AIMixASREngine$a;

    invoke-direct {v1, p0, p2}, Lcom/aispeech/export/engines/AIMixASREngine$a;-><init>(Lcom/aispeech/export/engines/AIMixASREngine;Lcom/aispeech/export/listeners/AIASRListener;)V

    iget-object v2, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    iget-object v3, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/c;Lcom/aispeech/a;Lcom/aispeech/a;)V

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->j:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-boolean v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->k:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    new-array v0, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/aispeech/export/engines/AIMixASREngine;->i:Ljava/lang/String;

    aput-object v3, v0, v4

    goto/16 :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->j:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    new-array v0, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/aispeech/export/engines/AIMixASREngine;->h:Ljava/lang/String;

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/aispeech/export/engines/AIMixASREngine;->i:Ljava/lang/String;

    aput-object v3, v0, v5

    goto/16 :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->k:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    new-array v0, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/aispeech/export/engines/AIMixASREngine;->g:Ljava/lang/String;

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/aispeech/export/engines/AIMixASREngine;->i:Ljava/lang/String;

    aput-object v3, v0, v5

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v3, p0, Lcom/aispeech/export/engines/AIMixASREngine;->g:Ljava/lang/String;

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/aispeech/export/engines/AIMixASREngine;->h:Ljava/lang/String;

    aput-object v3, v0, v5

    iget-object v3, p0, Lcom/aispeech/export/engines/AIMixASREngine;->i:Ljava/lang/String;

    aput-object v3, v0, v6

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v2}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/aispeech/export/engines/AIMixASREngine;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aispeech/b/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v2}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/aispeech/export/engines/AIMixASREngine;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aispeech/b/b;->d(Ljava/lang/String;)V

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v2}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/aispeech/export/engines/AIMixASREngine;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aispeech/b/b;->a(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public isBusy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->a:Z

    return v0
.end method

.method public notifyWakeup()V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/aispeech/c/j;->a(J)V

    return-void
.end method

.method public putCloudLocalDomainMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    invoke-virtual {v0, p1, p2}, Lcom/aispeech/speech/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAthThreshold(F)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/speech/a;->b(F)V

    return-void
.end method

.method public setCloudContextId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->j(Ljava/lang/String;)V

    return-void
.end method

.method public setCloudNotGoodAtDomains([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/speech/a;->b([Ljava/lang/String;)V

    return-void
.end method

.method public setCloudVadEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->a(Z)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->i(Z)V

    return-void
.end method

.method public setCmdNetBin(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/aispeech/export/engines/AIMixASREngine;->setCmdNetBin(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCmdNetBin(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AIMixASREngine;->h:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/aispeech/export/engines/AIMixASREngine;->k:Z

    return-void
.end method

.method public setCommonWakeupWord([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->a([Ljava/lang/String;)V

    return-void
.end method

.method public setCommonWakeupWordPinyin([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->b([Ljava/lang/String;)V

    return-void
.end method

.method public setContextId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setCoreType(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setCustomWakeupWord([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->c([Ljava/lang/String;)V

    return-void
.end method

.method public setCustomWakeupWordPinyin([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->d([Ljava/lang/String;)V

    return-void
.end method

.method public setDBable(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AIMixASREngine;->l:Ljava/lang/String;

    return-void
.end method

.method public setDefaultIp([[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->a([[Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setDlgDomain(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->h(Ljava/lang/String;)V

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->g(Ljava/lang/String;)V

    return-void
.end method

.method public setEchoWavePath(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/aispeech/common/AIConstant;->NEW_ECHO_ENABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->p(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnv(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setHttpTransferTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->c(I)V

    return-void
.end method

.method public setIsPreferCloud(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/speech/a;->c(Z)V

    return-void
.end method

.method public setIsRelyOnLocalConf(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/speech/a;->b(Z)V

    return-void
.end method

.method public setLastServiceType(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->l(Ljava/lang/String;)V

    return-void
.end method

.method public setLbsCity(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->i(Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/aispeech/export/listeners/AIASRListener;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    new-instance v1, Lcom/aispeech/export/engines/AIMixASREngine$a;

    invoke-direct {v1, p0, p1}, Lcom/aispeech/export/engines/AIMixASREngine$a;-><init>(Lcom/aispeech/export/engines/AIMixASREngine;Lcom/aispeech/export/listeners/AIASRListener;)V

    invoke-virtual {v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/c;)V

    return-void
.end method

.method public setLocalBetterDomains([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/speech/a;->a([Ljava/lang/String;)V

    return-void
.end method

.method public setLthThreshold(F)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/speech/a;->c(F)V

    return-void
.end method

.method public setLuaResName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxSpeechTimeS(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->e(I)V

    return-void
.end method

.method public setMergeRule(Lcom/aispeech/IMergeRule;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/IMergeRule;)V

    return-void
.end method

.method public setNBest(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->a(I)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->a(I)V

    return-void
.end method

.method public setNetBin(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/aispeech/export/engines/AIMixASREngine;->setNetBin(Ljava/lang/String;Z)V

    return-void
.end method

.method public setNetBin(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AIMixASREngine;->g:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/aispeech/export/engines/AIMixASREngine;->j:Z

    return-void
.end method

.method public setNetWorkState(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/speech/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setNoSpeechTimeOut(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->f(I)V

    return-void
.end method

.method public setOneShotIntervalTimeThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->i(I)V

    return-void
.end method

.method public setPauseTime(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->a(I)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->a(I)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->h(I)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->h(I)V

    return-void
.end method

.method public setPrevDomain(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->k(Ljava/lang/String;)V

    return-void
.end method

.method public setRTMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->c(I)V

    return-void
.end method

.method public setRes(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setResBin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AIMixASREngine;->i:Ljava/lang/String;

    return-void
.end method

.method public setResStoragePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->o(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->o(Ljava/lang/String;)V

    return-void
.end method

.method public setSampleRate(Lcom/aispeech/AISampleRate;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0}, Lcom/aispeech/a;->d()Lcom/aispeech/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aispeech/d/a;->a(Lcom/aispeech/AISampleRate;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->a(Lcom/aispeech/AISampleRate;)V

    return-void
.end method

.method public setSaveWavePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->g(Ljava/lang/String;)V

    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->k(Ljava/lang/String;)V

    return-void
.end method

.method public setServerConnectTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(I)V

    return-void
.end method

.method public setTmpDir(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->l(Ljava/lang/String;)V

    return-void
.end method

.method public setTmpDirMaxSize(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->e(I)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->e(I)V

    return-void
.end method

.method public setUploadEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/export/engines/AIMixASREngine;->m:Z

    return-void
.end method

.method public setUploadInterval(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->f(I)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->f(I)V

    return-void
.end method

.method public setUploadServer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->m(Ljava/lang/String;)V

    return-void
.end method

.method public setUseCloud(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/speech/a;->a(Z)V

    return-void
.end method

.method public setUseConf(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->d(Z)V

    return-void
.end method

.method public setUseCustomFeed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->k(Z)V

    return-void
.end method

.method public setUseForceout(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->f(Z)V

    return-void
.end method

.method public setUseIndividualThread(Z)V
    .locals 0

    return-void
.end method

.method public setUseOneShotFunction(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->m(Z)V

    return-void
.end method

.method public setUsePinyin(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->e(Z)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->c(Z)V

    return-void
.end method

.method public setUseXbnfRec(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->c(Z)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->s(Ljava/lang/String;)V

    return-void
.end method

.method public setVadEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->a(Z)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->i(Z)V

    return-void
.end method

.method public setVadResource(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setVolEnable(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/j;->j(Z)V

    return-void
.end method

.method public setWaitCloudTimeout(J)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    invoke-virtual {v0, p1, p2}, Lcom/aispeech/speech/a;->c(J)V

    return-void
.end method

.method public setWakeupWord(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/e;->m(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->a:Z

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    iget-object v1, p0, Lcom/aispeech/export/engines/AIMixASREngine;->e:Lcom/aispeech/c/j;

    iget-object v2, p0, Lcom/aispeech/export/engines/AIMixASREngine;->f:Lcom/aispeech/c/e;

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/d;Lcom/aispeech/speech/d;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "AIMixASREngine"

    const-string v1, "AIMixASREngine start failed ,please call start() method after callback method onInit() is called and status is 0 "

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine;->b:Lcom/aispeech/speech/a;

    invoke-virtual {v0}, Lcom/aispeech/speech/a;->a()V

    :cond_0
    return-void
.end method
