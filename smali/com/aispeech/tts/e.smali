.class public final Lcom/aispeech/tts/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aispeech/AIEngine$aiengine_callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/tts/e$a;,
        Lcom/aispeech/tts/e$b;,
        Lcom/aispeech/tts/e$c;,
        Lcom/aispeech/tts/e$d;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private b:Lcom/aispeech/tts/MP3Decoder;

.field private c:Lcom/aispeech/AIEngine;

.field private d:Lcom/aispeech/a;

.field private e:Lcom/aispeech/tts/k;

.field private f:Lcom/aispeech/tts/j;

.field private g:Lcom/aispeech/tts/c;

.field private h:Lcom/aispeech/tts/d;

.field private i:Lcom/aispeech/tts/g;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:J

.field private l:Landroid/content/Context;

.field private m:Landroid/os/Handler;

.field private n:Landroid/os/Handler;

.field private o:Landroid/os/Looper;

.field private p:Lcom/aispeech/tts/e$d;

.field private q:Lcom/aispeech/b;


# direct methods
.method public constructor <init>(Lcom/aispeech/tts/j;Lcom/aispeech/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aispeech/tts/e;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aispeech/tts/e;->a:Ljava/util/ArrayList;

    sget-object v0, Lcom/aispeech/tts/e$d;->a:Lcom/aispeech/tts/e$d;

    iput-object v0, p0, Lcom/aispeech/tts/e;->p:Lcom/aispeech/tts/e$d;

    invoke-virtual {p2}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/tts/e;->l:Landroid/content/Context;

    iput-object p2, p0, Lcom/aispeech/tts/e;->d:Lcom/aispeech/a;

    iput-object p1, p0, Lcom/aispeech/tts/e;->f:Lcom/aispeech/tts/j;

    iget-object v0, p0, Lcom/aispeech/tts/e;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/aispeech/tts/e$2;

    invoke-direct {v1, p0, v0}, Lcom/aispeech/tts/e$2;-><init>(Lcom/aispeech/tts/e;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/aispeech/tts/e;->n:Landroid/os/Handler;

    new-instance v0, Lcom/aispeech/b;

    invoke-direct {v0}, Lcom/aispeech/b;-><init>()V

    iput-object v0, p0, Lcom/aispeech/tts/e;->q:Lcom/aispeech/b;

    invoke-virtual {p2}, Lcom/aispeech/a;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/tts/e;->o:Landroid/os/Looper;

    new-instance v0, Lcom/aispeech/tts/e$1;

    iget-object v1, p0, Lcom/aispeech/tts/e;->o:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/aispeech/tts/e$1;-><init>(Lcom/aispeech/tts/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/aispeech/tts/e;->m:Landroid/os/Handler;

    sget-object v0, Lcom/aispeech/tts/e$c;->a:Lcom/aispeech/tts/e$c;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e$c;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/aispeech/tts/e;Lcom/aispeech/a;Lcom/aispeech/AIEngine;)I
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/aispeech/a;->h()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/aispeech/a;->i()Ljava/util/Map;

    move-result-object v5

    if-eqz v4, :cond_0

    array-length v0, v4

    if-lez v0, :cond_0

    array-length v6, v4

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v7, v4, v3

    if-eqz v5, :cond_4

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    iget-object v8, p0, Lcom/aispeech/tts/e;->l:Landroid/content/Context;

    invoke-static {v8, v7, v0}, Lcom/aispeech/common/Util;->copyResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aispeech/tts/e;->l:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/aispeech/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/aispeech/common/Util;->copyResource(Landroid/content/Context;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aispeech/tts/e;->l:Landroid/content/Context;

    invoke-static {v3}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aispeech/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aispeech/a;->c(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0, p1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/a;)Z

    if-nez p1, :cond_2

    :goto_3
    const-string v0, "SpeechSynthesizer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "config"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/tts/e;->l:Landroid/content/Context;

    invoke-virtual {p2, v1, v0}, Lcom/aispeech/AIEngine;->a(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    const-string v3, "SpeechSynthesizer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AIEngine create return "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    move v0, v2

    :goto_4
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aispeech/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aispeech/a;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/aispeech/a;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const/4 v0, -0x1

    goto :goto_4

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/aispeech/tts/e;J)J
    .locals 1

    iput-wide p1, p0, Lcom/aispeech/tts/e;->k:J

    return-wide p1
.end method

.method static synthetic a(Lcom/aispeech/tts/e;Lcom/aispeech/AIEngine;)Lcom/aispeech/AIEngine;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/tts/e;->c:Lcom/aispeech/AIEngine;

    return-object p1
.end method

.method static synthetic a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/MP3Decoder;)Lcom/aispeech/tts/MP3Decoder;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/tts/e;->b:Lcom/aispeech/tts/MP3Decoder;

    return-object p1
.end method

.method static synthetic a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/c;)Lcom/aispeech/tts/c;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/tts/e;->g:Lcom/aispeech/tts/c;

    return-object p1
.end method

.method static synthetic a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/d;)Lcom/aispeech/tts/d;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/tts/e;->h:Lcom/aispeech/tts/d;

    return-object p1
.end method

.method static synthetic a(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/e$d;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/e;->p:Lcom/aispeech/tts/e$d;

    return-object v0
.end method

.method static synthetic a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/g;)Lcom/aispeech/tts/g;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/tts/e;->i:Lcom/aispeech/tts/g;

    return-object p1
.end method

.method static synthetic a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/k;)Lcom/aispeech/tts/k;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/tts/e;->e:Lcom/aispeech/tts/k;

    return-object p1
.end method

.method static synthetic a(Lcom/aispeech/AIEngine;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/aispeech/AIEngine;->b()I

    :cond_0
    return-void
.end method

.method private a(Lcom/aispeech/AIResult;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/aispeech/AIResult;->getResultType()I

    move-result v0

    sget v1, Lcom/aispeech/common/AIConstant;->AIENGINE_MESSAGE_TYPE_BIN:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/e;->e:Lcom/aispeech/tts/k;

    invoke-virtual {v0}, Lcom/aispeech/tts/k;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/aispeech/tts/e$c;->i:Lcom/aispeech/tts/e$c;

    invoke-virtual {p1}, Lcom/aispeech/AIResult;->getResultObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p0, v1, v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e$c;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/aispeech/tts/e;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/aispeech/AIResult;->getResultObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/aispeech/AIResult;->isLast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_2
    new-array v3, v1, [B

    iget-object v0, p0, Lcom/aispeech/tts/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v5, v0

    invoke-static {v0, v2, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/aispeech/tts/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/aispeech/tts/e$c;->h:Lcom/aispeech/tts/e$c;

    invoke-direct {p0, v0, v3}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e$c;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Lcom/aispeech/tts/e$c;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/tts/e;->o:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/e;->m:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/aispeech/tts/e$c;->a()I

    move-result v1

    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aispeech/tts/e;Lcom/aispeech/speech/d;Lcom/aispeech/AIEngine;)V
    .locals 5

    invoke-virtual {p1}, Lcom/aispeech/speech/d;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "native"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/aispeech/tts/e;->l:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/aispeech/common/e;->a(Landroid/content/Context;Lcom/aispeech/speech/d;)V

    invoke-virtual {p1}, Lcom/aispeech/speech/d;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SpeechParams:\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/tts/e;->j:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/tts/e;->j:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p2, v0, p0}, Lcom/aispeech/AIEngine;->a(Ljava/lang/String;Lcom/aispeech/AIEngine$aiengine_callback;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpeechSynthesizer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "recordId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    sget-object v0, Lcom/aispeech/tts/e$c;->g:Lcom/aispeech/tts/e$c;

    new-instance v2, Lcom/aispeech/AIError;

    const v3, 0x114f6

    const-string v4, "\u65e0\u6cd5\u542f\u52a8\u5f15\u64ce!"

    invoke-direct {v2, v3, v4}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e$c;Ljava/lang/Object;)V

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/aispeech/tts/e;->d:Lcom/aispeech/a;

    iget-object v3, p0, Lcom/aispeech/tts/e;->e:Lcom/aispeech/tts/k;

    invoke-static {v2, v3, v0}, Lcom/aispeech/common/e;->a(Lcom/aispeech/a;Lcom/aispeech/tts/k;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/tts/e;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/aispeech/speech/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$b;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/tts/e;->n:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/aispeech/tts/e$b;->a()I

    move-result v1

    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$c;)V
    .locals 3

    const-string v0, "SpeechSynthesizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid State\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/tts/e;->p:Lcom/aispeech/tts/e$d;

    invoke-virtual {v2}, Lcom/aispeech/tts/e$d;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when MSG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aispeech/tts/e$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$c;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e$c;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$d;)V
    .locals 3

    const-string v0, "SpeechSynthesizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transfer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/tts/e;->p:Lcom/aispeech/tts/e$d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aispeech/tts/e;->p:Lcom/aispeech/tts/e$d;

    return-void
.end method

.method static synthetic a(Lcom/aispeech/tts/e;[B)V
    .locals 13

    const/4 v2, 0x0

    const/16 v0, 0x5e20

    new-array v6, v0, [S

    const/16 v0, 0x1000

    new-array v7, v0, [S

    array-length v0, p1

    div-int/lit16 v0, v0, 0x320

    add-int/lit8 v8, v0, 0x1

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v8, :cond_d

    add-int/lit8 v0, v8, -0x1

    if-ge v5, v0, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    const/16 v0, 0x320

    new-array v0, v0, [B

    :goto_1
    mul-int/lit16 v1, v5, 0x320

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {p1, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/aispeech/tts/e;->b:Lcom/aispeech/tts/MP3Decoder;

    if-eqz v1, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/aispeech/tts/e;->b:Lcom/aispeech/tts/MP3Decoder;

    array-length v2, v0

    invoke-virtual {v1, v0, v2, v6, v7}, Lcom/aispeech/tts/MP3Decoder;->a([BI[S[S)I

    move-result v2

    :cond_0
    :goto_2
    if-lez v2, :cond_a

    new-array v9, v2, [S

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v1, 0x5e20

    if-gt v2, v1, :cond_4

    move v1, v2

    :goto_3
    invoke-static {v6, v3, v9, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v9

    shl-int/lit8 v1, v1, 0x1

    new-array v10, v1, [B

    const/4 v1, 0x0

    :goto_4
    array-length v3, v9

    if-ge v1, v3, :cond_9

    aget-short v4, v9, v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v11, :cond_5

    const/4 v3, 0x1

    :goto_5
    const/4 v11, 0x4

    new-array v11, v11, [B

    if-eqz v3, :cond_6

    const/4 v3, 0x3

    :goto_6
    if-ltz v3, :cond_7

    int-to-byte v12, v4

    aput-byte v12, v11, v3

    shr-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_1
    add-int/lit8 v0, v8, -0x1

    if-ge v5, v0, :cond_2

    array-length v0, p1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_1

    :cond_2
    array-length v0, p1

    rem-int/lit16 v0, v0, 0x320

    new-array v0, v0, [B

    goto :goto_1

    :cond_3
    const/16 v1, 0x320

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/aispeech/tts/e;->b:Lcom/aispeech/tts/MP3Decoder;

    const/16 v3, 0x320

    invoke-virtual {v2, v1, v3, v6, v7}, Lcom/aispeech/tts/MP3Decoder;->a([BI[S[S)I

    move-result v2

    goto :goto_2

    :cond_4
    const/16 v1, 0x5e20

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_7
    const/4 v12, 0x4

    if-ge v3, v12, :cond_7

    int-to-byte v12, v4

    aput-byte v12, v11, v3

    shr-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x2

    if-ge v3, v4, :cond_8

    shl-int/lit8 v4, v1, 0x1

    add-int/2addr v4, v3

    aget-byte v12, v11, v3

    aput-byte v12, v10, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/aispeech/tts/e;->e:Lcom/aispeech/tts/k;

    invoke-virtual {v1}, Lcom/aispeech/tts/k;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Lcom/aispeech/tts/h;

    iget-object v3, p0, Lcom/aispeech/tts/e;->e:Lcom/aispeech/tts/k;

    invoke-virtual {v3}, Lcom/aispeech/tts/k;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v10}, Lcom/aispeech/tts/h;-><init>(Ljava/lang/String;[B)V

    iget-object v3, p0, Lcom/aispeech/tts/e;->i:Lcom/aispeech/tts/g;

    invoke-virtual {v3, v1}, Lcom/aispeech/tts/g;->a(Lcom/aispeech/tts/f;)V

    iget-object v1, p0, Lcom/aispeech/tts/e;->h:Lcom/aispeech/tts/d;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/aispeech/tts/d;->a(Z)V

    :cond_a
    array-length v0, v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/aispeech/tts/e;->b:Lcom/aispeech/tts/MP3Decoder;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/aispeech/tts/e;->b:Lcom/aispeech/tts/MP3Decoder;

    invoke-virtual {v0}, Lcom/aispeech/tts/MP3Decoder;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/tts/e;->b:Lcom/aispeech/tts/MP3Decoder;

    :cond_b
    new-instance v0, Lcom/aispeech/tts/h;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/aispeech/tts/h;-><init>(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/aispeech/tts/e;->i:Lcom/aispeech/tts/g;

    invoke-virtual {v1, v0}, Lcom/aispeech/tts/g;->a(Lcom/aispeech/tts/f;)V

    iget-object v0, p0, Lcom/aispeech/tts/e;->h:Lcom/aispeech/tts/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/aispeech/tts/d;->a(Z)V

    :cond_c
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private a(Lcom/aispeech/a;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aispeech/tts/e;->l:Landroid/content/Context;

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
    invoke-virtual {p1, v0}, Lcom/aispeech/a;->j(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/aispeech/a;->e()Lcom/aispeech/c;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/tts/e;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/aispeech/c;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/aispeech/tts/e$c;->g:Lcom/aispeech/tts/e$c;

    new-instance v1, Lcom/aispeech/AIError;

    const v2, 0x11501

    const-string v3, "\u8bc1\u4e66\u6587\u4ef6\u51c6\u5907\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5provision.file\u6587\u4ef6\u662f\u5426\u5b58\u653e\u5728assets\u76ee\u5f55\u4e0b"

    invoke-direct {v1, v2, v3}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e$c;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_1
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/aispeech/tts/e$c;)Z
    .locals 1

    sget-object v0, Lcom/aispeech/tts/e$c;->i:Lcom/aispeech/tts/e$c;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/aispeech/tts/e$c;->h:Lcom/aispeech/tts/e$c;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/aispeech/tts/e;)Lcom/aispeech/a;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/e;->d:Lcom/aispeech/a;

    return-object v0
.end method

.method static synthetic b(Lcom/aispeech/AIEngine;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/aispeech/AIEngine;->c()I

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/aispeech/tts/e;[B)V
    .locals 2

    const/4 v1, 0x0

    array-length v0, p1

    if-nez v0, :cond_1

    new-instance v0, Lcom/aispeech/tts/h;

    invoke-direct {v0, v1, v1}, Lcom/aispeech/tts/h;-><init>(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/aispeech/tts/e;->i:Lcom/aispeech/tts/g;

    invoke-virtual {v1, v0}, Lcom/aispeech/tts/g;->a(Lcom/aispeech/tts/f;)V

    iget-object v0, p0, Lcom/aispeech/tts/e;->h:Lcom/aispeech/tts/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/aispeech/tts/d;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aispeech/tts/e;->e:Lcom/aispeech/tts/k;

    invoke-virtual {v0}, Lcom/aispeech/tts/k;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/aispeech/tts/h;

    iget-object v1, p0, Lcom/aispeech/tts/e;->e:Lcom/aispeech/tts/k;

    invoke-virtual {v1}, Lcom/aispeech/tts/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/aispeech/tts/h;-><init>(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/aispeech/tts/e;->i:Lcom/aispeech/tts/g;

    invoke-virtual {v1, v0}, Lcom/aispeech/tts/g;->a(Lcom/aispeech/tts/f;)V

    iget-object v0, p0, Lcom/aispeech/tts/e;->h:Lcom/aispeech/tts/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/aispeech/tts/d;->a(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/aispeech/tts/k;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/aispeech/tts/k;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aispeech/tts/k;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cloud"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/aispeech/tts/e;)Lcom/aispeech/AIEngine;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/e;->c:Lcom/aispeech/AIEngine;

    return-object v0
.end method

.method static synthetic c(Lcom/aispeech/AIEngine;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/aispeech/AIEngine;->d()I

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/k;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/e;->e:Lcom/aispeech/tts/k;

    return-object v0
.end method

.method static synthetic e(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/c;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/e;->g:Lcom/aispeech/tts/c;

    return-object v0
.end method

.method static synthetic f(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/g;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/e;->i:Lcom/aispeech/tts/g;

    return-object v0
.end method

.method static synthetic g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/e;->h:Lcom/aispeech/tts/d;

    return-object v0
.end method

.method static synthetic h(Lcom/aispeech/tts/e;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/e;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/MP3Decoder;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/e;->b:Lcom/aispeech/tts/MP3Decoder;

    return-object v0
.end method

.method static synthetic j(Lcom/aispeech/tts/e;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/e;->j:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic k(Lcom/aispeech/tts/e;)Landroid/os/Looper;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/tts/e;->o:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic l(Lcom/aispeech/tts/e;)Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/tts/e;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lcom/aispeech/tts/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/aispeech/tts/e;->k:J

    return-wide v0
.end method

.method static synthetic n(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/j;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/e;->f:Lcom/aispeech/tts/j;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lcom/aispeech/tts/e$c;->d:Lcom/aispeech/tts/e$c;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e$c;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(FF)V
    .locals 3

    sget-object v0, Lcom/aispeech/tts/e$c;->k:Lcom/aispeech/tts/e$c;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e$c;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/aispeech/tts/k;)V
    .locals 2

    :try_start_0
    sget-object v1, Lcom/aispeech/tts/e$c;->b:Lcom/aispeech/tts/e$c;

    invoke-virtual {p1}, Lcom/aispeech/tts/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aispeech/tts/k;

    invoke-direct {p0, v1, v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e$c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    sget-object v0, Lcom/aispeech/tts/e$c;->e:Lcom/aispeech/tts/e$c;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e$c;Ljava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .locals 2

    sget-object v0, Lcom/aispeech/tts/e$c;->c:Lcom/aispeech/tts/e$c;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e$c;Ljava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/aispeech/tts/e$c;->f:Lcom/aispeech/tts/e$c;

    invoke-direct {p0, v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e$c;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/aispeech/tts/e;->f:Lcom/aispeech/tts/j;

    return-void
.end method

.method public final run([BI[BI)I
    .locals 6

    const/4 v1, -0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    new-array v4, p4, [B

    invoke-static {p3, v2, v4, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v0, Lcom/aispeech/common/AIConstant;->AIENGINE_MESSAGE_TYPE_JSON:I

    if-ne p2, v0, :cond_0

    invoke-static {v4}, Lcom/aispeech/common/Util;->newUTF8String([B)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/aispeech/tts/e;->q:Lcom/aispeech/b;

    if-eqz v5, :cond_0

    invoke-static {v0}, Lcom/aispeech/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/aispeech/tts/e$c;->g:Lcom/aispeech/tts/e$c;

    new-instance v2, Lcom/aispeech/AIError;

    invoke-static {v4}, Lcom/aispeech/common/Util;->newUTF8String([B)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lcom/aispeech/AIError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e$c;Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/aispeech/tts/e;->j:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/aispeech/tts/e;->j:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/tts/e;->j:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SpeechSynthesizer"

    const-string v2, "recordid not found in recordId-queryType map, unknown type!"

    invoke-static {v0, v2}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v5

    move v0, v1

    goto :goto_0

    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget v0, Lcom/aispeech/common/AIConstant;->AIENGINE_MESSAGE_TYPE_BIN:I

    if-ne p2, v0, :cond_4

    invoke-static {p2, v3, v4}, Lcom/aispeech/AIResult;->bundleResults(ILjava/lang/String;[B)Lcom/aispeech/AIResult;

    move-result-object v1

    if-nez p4, :cond_5

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    const-string v3, "SpeechSynthesizer"

    const-string v4, "is last"

    invoke-static {v3, v4}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1, v0}, Lcom/aispeech/AIResult;->setLast(Z)V

    invoke-direct {p0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/AIResult;)V

    :cond_4
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move v0, v2

    goto :goto_1
.end method
