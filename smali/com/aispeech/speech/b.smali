.class public final Lcom/aispeech/speech/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aispeech/AIEngine$aiengine_callback;
.implements Lcom/aispeech/a/d;
.implements Lcom/aispeech/d/c;
.implements Lcom/aispeech/f$a;
.implements Lcom/aispeech/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/speech/b$d;,
        Lcom/aispeech/speech/b$e;,
        Lcom/aispeech/speech/b$a;,
        Lcom/aispeech/speech/b$b;,
        Lcom/aispeech/speech/b$c;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Ljava/lang/String;

.field private c:Lcom/aispeech/AIEngine;

.field private d:Lcom/aispeech/a;

.field private e:Lcom/aispeech/speech/d;

.field private f:Lcom/aispeech/a/e;

.field private g:J

.field private h:Lcom/aispeech/d/b;

.field private i:Lcom/aispeech/b;

.field private j:Lcom/aispeech/h;

.field private k:Lcom/aispeech/g;

.field private l:Lcom/aispeech/f;

.field private m:Lcom/aispeech/speech/c;

.field private n:Landroid/content/Context;

.field private o:Landroid/os/Handler;

.field private p:Landroid/os/Looper;

.field private q:Landroid/os/Handler;

.field private r:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/Map;
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

.field private t:Lcom/aispeech/speech/b$c;

.field private u:Lcom/aispeech/speech/b$c;

.field private v:Lcom/aispeech/speech/b$e;

.field private w:Lcom/aispeech/speech/b$d;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SpeechEngine"

    iput-object v0, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/aispeech/speech/b;->r:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aispeech/speech/b;->s:Ljava/util/Map;

    sget-object v0, Lcom/aispeech/speech/b$c;->a:Lcom/aispeech/speech/b$c;

    iput-object v0, p0, Lcom/aispeech/speech/b;->t:Lcom/aispeech/speech/b$c;

    sget-object v0, Lcom/aispeech/speech/b$c;->a:Lcom/aispeech/speech/b$c;

    iput-object v0, p0, Lcom/aispeech/speech/b;->u:Lcom/aispeech/speech/b$c;

    new-instance v0, Lcom/aispeech/speech/b$2;

    invoke-direct {v0, p0}, Lcom/aispeech/speech/b$2;-><init>(Lcom/aispeech/speech/b;)V

    iput-object v0, p0, Lcom/aispeech/speech/b;->a:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/aispeech/speech/b;->v:Lcom/aispeech/speech/b$e;

    iput-object v1, p0, Lcom/aispeech/speech/b;->w:Lcom/aispeech/speech/b$d;

    return-void
.end method

.method static synthetic a(Lcom/aispeech/speech/b;Lcom/aispeech/a;Lcom/aispeech/AIEngine;)I
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/aispeech/a;->h()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/aispeech/a;->i()Ljava/util/Map;

    move-result-object v6

    if-eqz v5, :cond_0

    array-length v0, v5

    if-lez v0, :cond_0

    array-length v7, v5

    move v4, v2

    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v8, v5, v4

    if-eqz v6, :cond_8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    iget-object v9, p0, Lcom/aispeech/speech/b;->n:Landroid/content/Context;

    invoke-static {v9, v8, v0}, Lcom/aispeech/common/Util;->copyResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/b;->n:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/aispeech/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/aispeech/common/Util;->copyResource(Landroid/content/Context;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aispeech/speech/b;->n:Landroid/content/Context;

    invoke-static {v4}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aispeech/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aispeech/a;->c(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1}, Lcom/aispeech/a;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/aispeech/a;->d()Lcom/aispeech/d/a;

    move-result-object v0

    iget-object v4, p0, Lcom/aispeech/speech/b;->n:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/aispeech/d/a;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/aispeech/speech/b;->o:Landroid/os/Handler;

    sget-object v1, Lcom/aispeech/speech/b$b;->k:Lcom/aispeech/speech/b$b;

    invoke-virtual {v1}, Lcom/aispeech/speech/b$b;->a()I

    move-result v1

    new-instance v2, Lcom/aispeech/AIError;

    const v4, 0x11500

    const-string v5, "VAD\u8d44\u6e90\u51c6\u5907\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u5b58\u653e\u5728assets\u76ee\u5f55\u4e0b"

    invoke-direct {v2, v4, v5}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    return v3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aispeech/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aispeech/a;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/aispeech/a;->d()Lcom/aispeech/d/a;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/aispeech/a;->d()Lcom/aispeech/d/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aispeech/d/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/aispeech/d/a;->a(Ljava/lang/String;)V

    :cond_3
    sget-boolean v0, Lcom/aispeech/common/AIConstant;->NEW_ECHO_ENABLE:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aispeech/speech/b;->n:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/aispeech/a;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/aispeech/speech/b;->o:Landroid/os/Handler;

    sget-object v1, Lcom/aispeech/speech/b$b;->k:Lcom/aispeech/speech/b$b;

    invoke-virtual {v1}, Lcom/aispeech/speech/b$b;->a()I

    move-result v1

    new-instance v2, Lcom/aispeech/AIError;

    const v4, 0x11507

    const-string v5, "AEC\u8d44\u6e90\u51c6\u5907\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u5b58\u653e\u5728assets\u76ee\u5f55\u4e0b"

    invoke-direct {v2, v4, v5}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/aispeech/common/AIConstant;->ECHO_CFG_FILE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aispeech/a;->a(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, p1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/a;)Z

    if-nez p1, :cond_6

    :goto_4
    iget-object v0, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "config"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/speech/b;->n:Landroid/content/Context;

    invoke-virtual {p2, v1, v0}, Lcom/aispeech/AIEngine;->a(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    iget-object v4, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AIEngine create return "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    move v0, v2

    :goto_5
    move v3, v0

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/aispeech/a;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_7
    move v0, v3

    goto :goto_5

    :cond_8
    move-object v0, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/aispeech/speech/b;Lcom/aispeech/AIEngine;)Lcom/aispeech/AIEngine;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/b;->c:Lcom/aispeech/AIEngine;

    return-object p1
.end method

.method static synthetic a(Lcom/aispeech/speech/b;Lcom/aispeech/a/e;)Lcom/aispeech/a/e;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/b;->f:Lcom/aispeech/a/e;

    return-object p1
.end method

.method static synthetic a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$c;)Lcom/aispeech/speech/b$c;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/b;->t:Lcom/aispeech/speech/b$c;

    return-object p1
.end method

.method static synthetic a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/d;)Lcom/aispeech/speech/d;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/b;->e:Lcom/aispeech/speech/d;

    return-object p1
.end method

.method static synthetic a(Lcom/aispeech/speech/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/aispeech/AIEngine;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/aispeech/AIEngine;->b()I

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aispeech/AIEngine;[B)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/aispeech/speech/d;->m()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/aispeech/common/AIConstant;->NEW_ECHO_ENABLE:Z

    if-eqz v0, :cond_2

    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/aispeech/AIEngine;->a([BI)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/aispeech/AIEngine;->a([B)I

    goto :goto_0
.end method

.method private a(Lcom/aispeech/speech/b$a;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/speech/b;->q:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b;->q:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/aispeech/speech/b$a;->a()I

    move-result v1

    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/speech/b;->p:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b;->o:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/aispeech/speech/b$b;->a()I

    move-result v1

    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aispeech/speech/b;Lcom/aispeech/AIResult;)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    const-string v1, "uploadResult"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/aispeech/AIResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/speech/b;->d:Lcom/aispeech/a;

    iget-object v2, p0, Lcom/aispeech/speech/b;->e:Lcom/aispeech/speech/d;

    invoke-static {v0, v1, v2}, Lcom/aispeech/common/e;->b(Lorg/json/JSONObject;Lcom/aispeech/a;Lcom/aispeech/speech/d;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$a;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$a;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$b;)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid State\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/speech/b;->t:Lcom/aispeech/speech/b$c;

    invoke-virtual {v2}, Lcom/aispeech/speech/b$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when MSG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aispeech/speech/b$b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/d;Lcom/aispeech/AIEngine;)V
    .locals 5

    invoke-virtual {p1}, Lcom/aispeech/speech/d;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "native"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/aispeech/speech/b;->n:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/aispeech/common/e;->a(Landroid/content/Context;Lcom/aispeech/speech/d;)V

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/aispeech/speech/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/aispeech/common/Util;->getNetworkQuality(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/aispeech/speech/d;->g(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/aispeech/speech/d;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SpeechParams:\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/speech/b;->s:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aispeech/speech/b;->s:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p2, v0, p0}, Lcom/aispeech/AIEngine;->a(Ljava/lang/String;Lcom/aispeech/AIEngine$aiengine_callback;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "recordId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    sget-object v0, Lcom/aispeech/speech/b$b;->k:Lcom/aispeech/speech/b$b;

    new-instance v2, Lcom/aispeech/AIError;

    const v3, 0x114f6

    const-string v4, "\u65e0\u6cd5\u542f\u52a8\u5f15\u64ce!"

    invoke-direct {v2, v3, v4}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    monitor-exit v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/aispeech/speech/b;->s:Ljava/util/Map;

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

.method private a(Lcom/aispeech/a;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aispeech/speech/b;->n:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/aispeech/speech/b;->n:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/aispeech/c;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/aispeech/speech/b$b;->k:Lcom/aispeech/speech/b$b;

    new-instance v1, Lcom/aispeech/AIError;

    const v2, 0x11501

    const-string v3, "\u8bc1\u4e66\u6587\u4ef6\u51c6\u5907\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5provision.file\u6587\u4ef6\u662f\u5426\u5b58\u653e\u5728assets\u76ee\u5f55\u4e0b"

    invoke-direct {v1, v2, v3}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

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

.method static synthetic a(Lcom/aispeech/speech/b$b;)Z
    .locals 1

    sget-object v0, Lcom/aispeech/speech/b$b;->n:Lcom/aispeech/speech/b$b;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/aispeech/speech/b$b;->j:Lcom/aispeech/speech/b$b;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/b;->t:Lcom/aispeech/speech/b$c;

    return-object v0
.end method

.method static synthetic b(Lcom/aispeech/AIEngine;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/aispeech/AIEngine;->c()I

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/aispeech/speech/b;)Lcom/aispeech/a;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/b;->d:Lcom/aispeech/a;

    return-object v0
.end method

.method static synthetic c(Lcom/aispeech/AIEngine;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/aispeech/AIEngine;->d()I

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/aispeech/speech/b;)Lcom/aispeech/AIEngine;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/b;->c:Lcom/aispeech/AIEngine;

    return-object v0
.end method

.method static synthetic e(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/d;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/b;->e:Lcom/aispeech/speech/d;

    return-object v0
.end method

.method static synthetic f(Lcom/aispeech/speech/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/speech/b;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/aispeech/speech/b;)Lcom/aispeech/a/e;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/b;->f:Lcom/aispeech/a/e;

    return-object v0
.end method

.method static synthetic h(Lcom/aispeech/speech/b;)Lcom/aispeech/a/e;
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/speech/b;->l()Lcom/aispeech/a/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/aispeech/speech/b;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/speech/b;->f:Lcom/aispeech/a/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/speech/b;->f:Lcom/aispeech/a/e;

    instance-of v0, v0, Lcom/aispeech/a/f;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/aispeech/speech/b;->l()Lcom/aispeech/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/speech/b;->f:Lcom/aispeech/a/e;

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/b;->f:Lcom/aispeech/a/e;

    invoke-interface {v0, p0}, Lcom/aispeech/a/e;->a(Lcom/aispeech/a/d;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aispeech/speech/b;->g:J

    invoke-direct {p0}, Lcom/aispeech/speech/b;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/speech/b;->e:Lcom/aispeech/speech/d;

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/speech/b;->f:Lcom/aispeech/a/e;

    invoke-interface {v0}, Lcom/aispeech/a/e;->e()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/aispeech/speech/b;->e:Lcom/aispeech/speech/d;

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/speech/b;->f:Lcom/aispeech/a/e;

    invoke-interface {v0}, Lcom/aispeech/a/e;->f()V

    goto :goto_0
.end method

.method static synthetic j(Lcom/aispeech/speech/b;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/b;->r:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic k(Lcom/aispeech/speech/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/b;->o:Landroid/os/Handler;

    return-object v0
.end method

.method private k()Z
    .locals 2

    iget-object v0, p0, Lcom/aispeech/speech/b;->e:Lcom/aispeech/speech/d;

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalWakeupParams"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b;->e:Lcom/aispeech/speech/d;

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalWakeupDnnParams"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b;->e:Lcom/aispeech/speech/d;

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalWakeupLocalASRParams"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Lcom/aispeech/a/e;
    .locals 3

    iget-object v0, p0, Lcom/aispeech/speech/b;->e:Lcom/aispeech/speech/d;

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->n()Lcom/aispeech/AISampleRate;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/speech/b;->e:Lcom/aispeech/speech/d;

    invoke-virtual {v1}, Lcom/aispeech/speech/d;->o()I

    move-result v1

    iget-object v2, p0, Lcom/aispeech/speech/b;->e:Lcom/aispeech/speech/d;

    invoke-virtual {v2}, Lcom/aispeech/speech/d;->j()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/a/b;->a(Lcom/aispeech/AISampleRate;II)Lcom/aispeech/a/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/aispeech/speech/b;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/b;->s:Ljava/util/Map;

    return-object v0
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/b;->v:Lcom/aispeech/speech/b$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b;->v:Lcom/aispeech/speech/b$e;

    invoke-virtual {v0}, Lcom/aispeech/speech/b$e;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/speech/b;->v:Lcom/aispeech/speech/b$e;

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/aispeech/speech/b;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/speech/b;->w:Lcom/aispeech/speech/b$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b;->w:Lcom/aispeech/speech/b$d;

    invoke-virtual {v0}, Lcom/aispeech/speech/b$d;->cancel()Z

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/b;->f:Lcom/aispeech/a/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/speech/b;->f:Lcom/aispeech/a/e;

    invoke-interface {v0, p0}, Lcom/aispeech/a/e;->c(Lcom/aispeech/a/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    const-string v1, "detect recording , stop recorder!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/speech/b;->f:Lcom/aispeech/a/e;

    invoke-interface {v0, p0}, Lcom/aispeech/a/e;->b(Lcom/aispeech/a/d;)V

    invoke-direct {p0}, Lcom/aispeech/speech/b;->m()V

    :cond_1
    return-void
.end method

.method static synthetic n(Lcom/aispeech/speech/b;)V
    .locals 7

    invoke-static {}, Lcom/aispeech/speech/b$b;->values()[Lcom/aispeech/speech/b$b;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/aispeech/speech/b$b;->b()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/aispeech/speech/b;->o:Landroid/os/Handler;

    invoke-static {v3}, Lcom/aispeech/speech/b$b;->a(Lcom/aispeech/speech/b$b;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/aispeech/speech/b;->o:Landroid/os/Handler;

    invoke-static {v3}, Lcom/aispeech/speech/b$b;->a(Lcom/aispeech/speech/b$b;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "clear message: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/aispeech/speech/b$b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic o(Lcom/aispeech/speech/b;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/b;->f:Lcom/aispeech/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b;->f:Lcom/aispeech/a/e;

    invoke-interface {v0}, Lcom/aispeech/a/e;->a()V

    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/aispeech/speech/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/aispeech/speech/b;->m()V

    return-void
.end method

.method static synthetic q(Lcom/aispeech/speech/b;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/aispeech/speech/b;->n:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/aispeech/speech/b;->n:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/b;->d:Lcom/aispeech/a;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/aispeech/speech/b;->d:Lcom/aispeech/a;

    :cond_1
    iput-object v1, p0, Lcom/aispeech/speech/b;->e:Lcom/aispeech/speech/d;

    iget-object v0, p0, Lcom/aispeech/speech/b;->r:Ljava/util/Queue;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/speech/b;->r:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iput-object v1, p0, Lcom/aispeech/speech/b;->r:Ljava/util/Queue;

    :cond_2
    iget-object v0, p0, Lcom/aispeech/speech/b;->s:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aispeech/speech/b;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/aispeech/speech/b;->s:Ljava/util/Map;

    :cond_3
    iput-object v1, p0, Lcom/aispeech/speech/b;->c:Lcom/aispeech/AIEngine;

    return-void
.end method

.method static synthetic r(Lcom/aispeech/speech/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/aispeech/speech/b;->g:J

    return-wide v0
.end method

.method static synthetic s(Lcom/aispeech/speech/b;)V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/speech/b;->v:Lcom/aispeech/speech/b$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b;->v:Lcom/aispeech/speech/b$e;

    invoke-virtual {v0}, Lcom/aispeech/speech/b$e;->cancel()Z

    :cond_0
    new-instance v0, Lcom/aispeech/speech/b$e;

    invoke-direct {v0, p0}, Lcom/aispeech/speech/b$e;-><init>(Lcom/aispeech/speech/b;)V

    iput-object v0, p0, Lcom/aispeech/speech/b;->v:Lcom/aispeech/speech/b$e;

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/speech/b;->e:Lcom/aispeech/speech/d;

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->k()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start no Speech timeout task time is set to:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/speech/b;->e:Lcom/aispeech/speech/d;

    invoke-virtual {v2}, Lcom/aispeech/speech/d;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/common/AITimer;->getInstance()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/speech/b;->v:Lcom/aispeech/speech/b$e;

    iget-object v2, p0, Lcom/aispeech/speech/b;->e:Lcom/aispeech/speech/d;

    invoke-virtual {v2}, Lcom/aispeech/speech/d;->k()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic t(Lcom/aispeech/speech/b;)V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/speech/b;->w:Lcom/aispeech/speech/b$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b;->w:Lcom/aispeech/speech/b$d;

    invoke-virtual {v0}, Lcom/aispeech/speech/b$d;->cancel()Z

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/b;->e:Lcom/aispeech/speech/d;

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->j()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/aispeech/speech/b$d;

    invoke-direct {v0, p0}, Lcom/aispeech/speech/b$d;-><init>(Lcom/aispeech/speech/b;)V

    iput-object v0, p0, Lcom/aispeech/speech/b;->w:Lcom/aispeech/speech/b$d;

    :try_start_0
    invoke-static {}, Lcom/aispeech/common/AITimer;->getInstance()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/speech/b;->w:Lcom/aispeech/speech/b$d;

    iget-object v2, p0, Lcom/aispeech/speech/b;->e:Lcom/aispeech/speech/d;

    invoke-virtual {v2}, Lcom/aispeech/speech/d;->j()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic u(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/b;->u:Lcom/aispeech/speech/b$c;

    return-object v0
.end method

.method static synthetic v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/b;->m:Lcom/aispeech/speech/c;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lcom/aispeech/speech/b$b;->p:Lcom/aispeech/speech/b$b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(F)V
    .locals 2

    sget-object v0, Lcom/aispeech/speech/b$b;->j:Lcom/aispeech/speech/b$b;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    sget-object v0, Lcom/aispeech/speech/b$b;->q:Lcom/aispeech/speech/b$b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(J)V
    .locals 3

    sget-object v0, Lcom/aispeech/speech/b$b;->m:Lcom/aispeech/speech/b$b;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    sget-object v0, Lcom/aispeech/speech/b$a;->g:Lcom/aispeech/speech/b$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$a;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(J[BI)V
    .locals 2

    const/4 v1, 0x0

    new-array v0, p4, [B

    invoke-static {p3, v1, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lcom/aispeech/speech/b$b;->n:Lcom/aispeech/speech/b$b;

    invoke-direct {p0, v1, v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/aispeech/AIError;)V
    .locals 1

    sget-object v0, Lcom/aispeech/speech/b$b;->k:Lcom/aispeech/speech/b$b;

    invoke-direct {p0, v0, p1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/aispeech/AIResult;)V
    .locals 1

    sget-object v0, Lcom/aispeech/speech/b$b;->o:Lcom/aispeech/speech/b$b;

    invoke-direct {p0, v0, p1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/aispeech/speech/c;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/b;->m:Lcom/aispeech/speech/c;

    return-void
.end method

.method public final a(Lcom/aispeech/speech/c;Lcom/aispeech/a;)V
    .locals 2

    sget-object v0, Lcom/aispeech/speech/b$c;->c:Lcom/aispeech/speech/b$c;

    iput-object v0, p0, Lcom/aispeech/speech/b;->u:Lcom/aispeech/speech/b$c;

    iput-object p1, p0, Lcom/aispeech/speech/b;->m:Lcom/aispeech/speech/c;

    iput-object p2, p0, Lcom/aispeech/speech/b;->d:Lcom/aispeech/a;

    invoke-virtual {p2}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/speech/b;->n:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/aispeech/speech/b;->n:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "AISpeech Error"

    const-string v1, "context equaling null is not allowed !!!!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/aispeech/d/b;

    invoke-direct {v0, p0}, Lcom/aispeech/d/b;-><init>(Lcom/aispeech/d/c;)V

    iput-object v0, p0, Lcom/aispeech/speech/b;->h:Lcom/aispeech/d/b;

    new-instance v0, Lcom/aispeech/b;

    invoke-direct {v0}, Lcom/aispeech/b;-><init>()V

    iput-object v0, p0, Lcom/aispeech/speech/b;->i:Lcom/aispeech/b;

    new-instance v0, Lcom/aispeech/h;

    invoke-direct {v0, p0}, Lcom/aispeech/h;-><init>(Lcom/aispeech/h$a;)V

    iput-object v0, p0, Lcom/aispeech/speech/b;->j:Lcom/aispeech/h;

    new-instance v0, Lcom/aispeech/g;

    invoke-direct {v0, p0}, Lcom/aispeech/g;-><init>(Lcom/aispeech/h$a;)V

    iput-object v0, p0, Lcom/aispeech/speech/b;->k:Lcom/aispeech/g;

    new-instance v0, Lcom/aispeech/f;

    invoke-direct {v0, p0}, Lcom/aispeech/f;-><init>(Lcom/aispeech/f$a;)V

    iput-object v0, p0, Lcom/aispeech/speech/b;->l:Lcom/aispeech/f;

    invoke-static {}, Lcom/aispeech/common/b;->a()Lcom/aispeech/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/common/b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/speech/b;->p:Landroid/os/Looper;

    new-instance v0, Lcom/aispeech/speech/b$1;

    iget-object v1, p0, Lcom/aispeech/speech/b;->p:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/aispeech/speech/b$1;-><init>(Lcom/aispeech/speech/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/aispeech/speech/b;->o:Landroid/os/Handler;

    invoke-static {}, Lcom/aispeech/common/Util;->isUnitTesting()Z

    move-result v1

    iget-object v0, p0, Lcom/aispeech/speech/b;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v1, :cond_1

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "handlerThread-SpeechEngine"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_1
    new-instance v1, Lcom/aispeech/speech/b$3;

    invoke-direct {v1, p0, v0}, Lcom/aispeech/speech/b$3;-><init>(Lcom/aispeech/speech/b;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/aispeech/speech/b;->q:Landroid/os/Handler;

    sget-object v0, Lcom/aispeech/speech/b$b;->a:Lcom/aispeech/speech/b$b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/aispeech/speech/d;)V
    .locals 2

    sget-object v0, Lcom/aispeech/speech/b$c;->c:Lcom/aispeech/speech/b$c;

    iput-object v0, p0, Lcom/aispeech/speech/b;->u:Lcom/aispeech/speech/b$c;

    iget-object v0, p0, Lcom/aispeech/speech/b;->o:Landroid/os/Handler;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/aispeech/speech/b$b;->b:Lcom/aispeech/speech/b$b;

    invoke-virtual {p1}, Lcom/aispeech/speech/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aispeech/speech/d;

    invoke-direct {p0, v1, v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    const-string v1, "must init engine before call start!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/speech/b;->o:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/aispeech/speech/b$b;->u:Lcom/aispeech/speech/b$b;

    invoke-direct {p0, v0, p1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    const-string v1, "must init engine before call opt!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a([B)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/speech/b;->o:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/aispeech/speech/b$b;->n:Lcom/aispeech/speech/b$b;

    invoke-direct {p0, v0, p1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    const-string v1, "must init engine before call feed!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    sget-object v0, Lcom/aispeech/speech/b$b;->r:Lcom/aispeech/speech/b$b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    sget-object v0, Lcom/aispeech/speech/b$b;->s:Lcom/aispeech/speech/b$b;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/aispeech/speech/b$b;->s:Lcom/aispeech/speech/b$b;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b(J)V
    .locals 3

    sget-object v0, Lcom/aispeech/speech/b$b;->f:Lcom/aispeech/speech/b$b;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/aispeech/AIResult;)V
    .locals 1

    sget-object v0, Lcom/aispeech/speech/b$b;->t:Lcom/aispeech/speech/b$b;

    invoke-direct {p0, v0, p1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/aispeech/speech/b$b;->g:Lcom/aispeech/speech/b$b;

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    sget-object v0, Lcom/aispeech/speech/b$a;->e:Lcom/aispeech/speech/b$a;

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$a;Ljava/lang/Object;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/b;->e:Lcom/aispeech/speech/d;

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/speech/b;->o:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/aispeech/speech/b$b;->d:Lcom/aispeech/speech/b$b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    const-string v1, "must init engine before call stop!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/aispeech/speech/b;->q:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b;->q:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aispeech/speech/b$c;->e:Lcom/aispeech/speech/b$c;

    iput-object v0, p0, Lcom/aispeech/speech/b;->u:Lcom/aispeech/speech/b$c;

    invoke-direct {p0}, Lcom/aispeech/speech/b;->m()V

    iget-object v0, p0, Lcom/aispeech/speech/b;->o:Landroid/os/Handler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/aispeech/speech/b$b;->c:Lcom/aispeech/speech/b$b;

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    const-string v1, "must init engine before call cancel!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    sget-object v0, Lcom/aispeech/speech/b$b;->h:Lcom/aispeech/speech/b$b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final h()V
    .locals 2

    sget-object v0, Lcom/aispeech/speech/b$b;->i:Lcom/aispeech/speech/b$b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final i()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/aispeech/speech/b;->o:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/aispeech/speech/b$b;->e:Lcom/aispeech/speech/b$b;

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/aispeech/speech/b;->m:Lcom/aispeech/speech/c;

    iput-object v1, p0, Lcom/aispeech/speech/b;->h:Lcom/aispeech/d/b;

    iput-object v1, p0, Lcom/aispeech/speech/b;->i:Lcom/aispeech/b;

    iput-object v1, p0, Lcom/aispeech/speech/b;->j:Lcom/aispeech/h;

    iput-object v1, p0, Lcom/aispeech/speech/b;->k:Lcom/aispeech/g;

    iput-object v1, p0, Lcom/aispeech/speech/b;->l:Lcom/aispeech/f;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    const-string v1, "must init engine before call release!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final j()V
    .locals 3

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iget-object v0, p0, Lcom/aispeech/speech/b;->r:Ljava/util/Queue;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/aispeech/speech/b;->r:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b;->r:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/aispeech/speech/b;->o:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final run([BI[BI)I
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    new-array v5, p4, [B

    invoke-static {p3, v2, v5, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, ""

    iget-object v6, p0, Lcom/aispeech/speech/b;->s:Ljava/util/Map;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/aispeech/speech/b;->s:Ljava/util/Map;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/speech/b;->s:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    const-string v1, "recordid not found in recordId-queryType map, unknown type!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/aispeech/common/AIConstant;->AIENGINE_MESSAGE_TYPE_JSON:I

    if-ne p2, v0, :cond_1

    invoke-static {v5}, Lcom/aispeech/common/Util;->newUTF8String([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/speech/b;->i:Lcom/aispeech/b;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/aispeech/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/aispeech/speech/b$b;->k:Lcom/aispeech/speech/b$b;

    new-instance v1, Lcom/aispeech/AIError;

    invoke-static {v5}, Lcom/aispeech/common/Util;->newUTF8String([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/aispeech/AIError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    monitor-exit v6

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    monitor-exit v6

    move v2, v3

    goto :goto_0

    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    sget v6, Lcom/aispeech/common/AIConstant;->AIENGINE_MESSAGE_TYPE_JSON:I

    if-ne p2, v6, :cond_0

    invoke-static {v5}, Lcom/aispeech/common/Util;->newUTF8String([B)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/aispeech/speech/b;->e:Lcom/aispeech/speech/d;

    invoke-virtual {v7}, Lcom/aispeech/speech/d;->a()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/aispeech/speech/b;->h:Lcom/aispeech/d/b;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/aispeech/speech/b;->h:Lcom/aispeech/d/b;

    invoke-virtual {v7, v6}, Lcom/aispeech/d/b;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    iget-object v7, p0, Lcom/aispeech/speech/b;->i:Lcom/aispeech/b;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "callback:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/aispeech/b;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v0, Lcom/aispeech/speech/b$b;->k:Lcom/aispeech/speech/b$b;

    new-instance v1, Lcom/aispeech/AIError;

    invoke-static {v5}, Lcom/aispeech/common/Util;->newUTF8String([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/aispeech/AIError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    move v2, v3

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/aispeech/speech/b;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "callback:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "LocalWakeupParams"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/aispeech/speech/b;->j:Lcom/aispeech/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b;->j:Lcom/aispeech/h;

    invoke-virtual {v0, v6}, Lcom/aispeech/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "LocalWakeupLocalASRParams"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/aispeech/speech/b;->l:Lcom/aispeech/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b;->l:Lcom/aispeech/f;

    invoke-virtual {v0, v6}, Lcom/aispeech/f;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "LocalWakeupDnnParams"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/aispeech/speech/b;->k:Lcom/aispeech/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b;->k:Lcom/aispeech/g;

    invoke-virtual {v0, v6}, Lcom/aispeech/g;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {p2, v4, v5}, Lcom/aispeech/AIResult;->bundleResults(ILjava/lang/String;[B)Lcom/aispeech/AIResult;

    move-result-object v3

    new-instance v0, Lcom/aispeech/common/JSONResultParser;

    invoke-virtual {v3}, Lcom/aispeech/AIResult;->getResultObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/aispeech/common/JSONResultParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aispeech/common/JSONResultParser;->getEof()I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/aispeech/AIResult;->setLast(Z)V

    sget-object v0, Lcom/aispeech/speech/b$b;->l:Lcom/aispeech/speech/b$b;

    invoke-direct {p0, v0, v3}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_1
.end method
