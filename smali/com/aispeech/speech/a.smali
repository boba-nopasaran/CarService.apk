.class public final Lcom/aispeech/speech/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aispeech/AIEngine$aiengine_callback;
.implements Lcom/aispeech/a/d;
.implements Lcom/aispeech/d/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/speech/a$d;,
        Lcom/aispeech/speech/a$f;,
        Lcom/aispeech/speech/a$e;,
        Lcom/aispeech/speech/a$a;,
        Lcom/aispeech/speech/a$b;,
        Lcom/aispeech/speech/a$c;
    }
.end annotation


# instance fields
.field private A:F

.field private B:J

.field private C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private D:Lcom/aispeech/speech/a$c;

.field private E:Lcom/aispeech/speech/a$c;

.field private F:Lcom/aispeech/common/WavFileWriter;

.field private G:[Ljava/lang/String;

.field private H:[Ljava/lang/String;

.field private I:Ljava/util/Map;
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

.field private J:Lcom/aispeech/speech/a$e;

.field private K:Lcom/aispeech/speech/a$f;

.field private L:Lcom/aispeech/speech/a$d;

.field private a:Ljava/lang/String;

.field private b:Lcom/aispeech/AIEngine;

.field private c:Lcom/aispeech/a;

.field private d:Lcom/aispeech/speech/d;

.field private e:Lcom/aispeech/AIEngine;

.field private f:Lcom/aispeech/a;

.field private g:Lcom/aispeech/speech/d;

.field private h:Lcom/aispeech/a/e;

.field private i:J

.field private j:Lcom/aispeech/d/b;

.field private k:Lcom/aispeech/b;

.field private l:Lcom/aispeech/speech/c;

.field private m:Landroid/content/Context;

.field private n:Landroid/os/Handler;

.field private o:Landroid/os/Looper;

.field private p:Landroid/os/Handler;

.field private q:Lcom/aispeech/IMergeRule;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Lcom/aispeech/AIResult;

.field private w:Lcom/aispeech/AIResult;

.field private x:Lcom/aispeech/common/JSONResultParser;

.field private y:Lcom/aispeech/common/JSONResultParser;

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AISpeechEngine"

    iput-object v0, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/aispeech/speech/a;->b:Lcom/aispeech/AIEngine;

    iput-object v2, p0, Lcom/aispeech/speech/a;->c:Lcom/aispeech/a;

    iput-object v2, p0, Lcom/aispeech/speech/a;->d:Lcom/aispeech/speech/d;

    iput-object v2, p0, Lcom/aispeech/speech/a;->e:Lcom/aispeech/AIEngine;

    iput-object v2, p0, Lcom/aispeech/speech/a;->f:Lcom/aispeech/a;

    iput-object v2, p0, Lcom/aispeech/speech/a;->g:Lcom/aispeech/speech/d;

    iput-object v2, p0, Lcom/aispeech/speech/a;->h:Lcom/aispeech/a/e;

    iput-object v2, p0, Lcom/aispeech/speech/a;->j:Lcom/aispeech/d/b;

    iput-object v2, p0, Lcom/aispeech/speech/a;->k:Lcom/aispeech/b;

    iput-object v2, p0, Lcom/aispeech/speech/a;->l:Lcom/aispeech/speech/c;

    iput-object v2, p0, Lcom/aispeech/speech/a;->m:Landroid/content/Context;

    iput-object v2, p0, Lcom/aispeech/speech/a;->n:Landroid/os/Handler;

    iput-object v2, p0, Lcom/aispeech/speech/a;->p:Landroid/os/Handler;

    iput-object v2, p0, Lcom/aispeech/speech/a;->q:Lcom/aispeech/IMergeRule;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/speech/a;->r:Z

    iput-boolean v3, p0, Lcom/aispeech/speech/a;->s:Z

    iput-boolean v3, p0, Lcom/aispeech/speech/a;->t:Z

    iput-boolean v3, p0, Lcom/aispeech/speech/a;->u:Z

    iput-object v2, p0, Lcom/aispeech/speech/a;->v:Lcom/aispeech/AIResult;

    iput-object v2, p0, Lcom/aispeech/speech/a;->w:Lcom/aispeech/AIResult;

    iput-object v2, p0, Lcom/aispeech/speech/a;->x:Lcom/aispeech/common/JSONResultParser;

    iput-object v2, p0, Lcom/aispeech/speech/a;->y:Lcom/aispeech/common/JSONResultParser;

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/aispeech/speech/a;->z:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/aispeech/speech/a;->A:F

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/aispeech/speech/a;->B:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aispeech/speech/a;->C:Ljava/util/Map;

    sget-object v0, Lcom/aispeech/speech/a$c;->a:Lcom/aispeech/speech/a$c;

    iput-object v0, p0, Lcom/aispeech/speech/a;->D:Lcom/aispeech/speech/a$c;

    sget-object v0, Lcom/aispeech/speech/a$c;->a:Lcom/aispeech/speech/a$c;

    iput-object v0, p0, Lcom/aispeech/speech/a;->E:Lcom/aispeech/speech/a$c;

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/aispeech/speech/a;->G:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/aispeech/speech/a;->H:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aispeech/speech/a;->I:Ljava/util/Map;

    iput-object v2, p0, Lcom/aispeech/speech/a;->J:Lcom/aispeech/speech/a$e;

    iput-object v2, p0, Lcom/aispeech/speech/a;->K:Lcom/aispeech/speech/a$f;

    iput-object v2, p0, Lcom/aispeech/speech/a;->L:Lcom/aispeech/speech/a$d;

    return-void
.end method

.method static synthetic A(Lcom/aispeech/speech/a;)Lcom/aispeech/AIResult;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->v:Lcom/aispeech/AIResult;

    return-object v0
.end method

.method static synthetic B(Lcom/aispeech/speech/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/speech/a;->t:Z

    return v0
.end method

.method static synthetic C(Lcom/aispeech/speech/a;)F
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/speech/a;->n()F

    move-result v0

    return v0
.end method

.method static synthetic D(Lcom/aispeech/speech/a;)F
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/speech/a;->m()F

    move-result v0

    return v0
.end method

.method static synthetic E(Lcom/aispeech/speech/a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/speech/a;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic F(Lcom/aispeech/speech/a;)Lcom/aispeech/AIResult;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->w:Lcom/aispeech/AIResult;

    return-object v0
.end method

.method static synthetic G(Lcom/aispeech/speech/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/speech/a;->u:Z

    return v0
.end method

.method static synthetic H(Lcom/aispeech/speech/a;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/aispeech/speech/a;->H:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    invoke-direct {p0}, Lcom/aispeech/speech/a;->l()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static synthetic I(Lcom/aispeech/speech/a;)Lcom/aispeech/AIResult;
    .locals 3

    iget-object v0, p0, Lcom/aispeech/speech/a;->q:Lcom/aispeech/IMergeRule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/a;->q:Lcom/aispeech/IMergeRule;

    iget-object v1, p0, Lcom/aispeech/speech/a;->w:Lcom/aispeech/AIResult;

    iget-object v2, p0, Lcom/aispeech/speech/a;->v:Lcom/aispeech/AIResult;

    invoke-interface {v0, v1, v2}, Lcom/aispeech/IMergeRule;->mergeResult(Lcom/aispeech/AIResult;Lcom/aispeech/AIResult;)Lcom/aispeech/AIResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/a;->v:Lcom/aispeech/AIResult;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aispeech/speech/a;->w:Lcom/aispeech/AIResult;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/aispeech/speech/a;->n()F

    move-result v0

    invoke-direct {p0}, Lcom/aispeech/speech/a;->m()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-direct {p0}, Lcom/aispeech/speech/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/speech/a;->w:Lcom/aispeech/AIResult;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/aispeech/speech/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/aispeech/speech/a;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/speech/a;->I:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/aispeech/speech/a;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/aispeech/speech/a;->n()F

    move-result v0

    iget v1, p0, Lcom/aispeech/speech/a;->A:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    const-string v1, "cloud.domain=local.domain,local is strong & conf >= lth, return local."

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/speech/a;->w:Lcom/aispeech/AIResult;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    const-string v1, "cloud.domain=local.domain,local is weak, return cloud."

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/speech/a;->v:Lcom/aispeech/AIResult;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    const-string v1, "cloud.domain!=local.domain, return cloud."

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/speech/a;->v:Lcom/aispeech/AIResult;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/aispeech/speech/a;->v:Lcom/aispeech/AIResult;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aispeech/speech/a;->v:Lcom/aispeech/AIResult;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/aispeech/speech/a;->w:Lcom/aispeech/AIResult;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aispeech/speech/a;->w:Lcom/aispeech/AIResult;

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic J(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->E:Lcom/aispeech/speech/a$c;

    return-object v0
.end method

.method static synthetic K(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/c;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->l:Lcom/aispeech/speech/c;

    return-object v0
.end method

.method static synthetic a(Lcom/aispeech/speech/a;[Lcom/aispeech/a;[Lcom/aispeech/AIEngine;)I
    .locals 10

    const/4 v2, 0x0

    const/4 v1, -0x1

    move v3, v2

    move v0, v2

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_9

    aget-object v4, p1, v3

    aget-object v5, p2, v3

    invoke-direct {p0, v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/a;)Z

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lcom/aispeech/a;->h()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v0, v6

    if-lez v0, :cond_0

    array-length v7, v6

    move v0, v2

    :goto_1
    if-ge v0, v7, :cond_0

    aget-object v8, v6, v0

    iget-object v9, p0, Lcom/aispeech/speech/a;->m:Landroid/content/Context;

    invoke-static {v9, v8}, Lcom/aispeech/common/Util;->copyResource(Landroid/content/Context;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/a;->m:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/aispeech/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/aispeech/common/Util;->copyResource(Landroid/content/Context;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/aispeech/speech/a;->m:Landroid/content/Context;

    invoke-static {v6}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/aispeech/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aispeech/a;->c(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v4}, Lcom/aispeech/a;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lcom/aispeech/a;->d()Lcom/aispeech/d/a;

    move-result-object v0

    iget-object v6, p0, Lcom/aispeech/speech/a;->m:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/aispeech/d/a;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/aispeech/speech/a;->n:Landroid/os/Handler;

    sget-object v2, Lcom/aispeech/speech/a$b;->k:Lcom/aispeech/speech/a$b;

    invoke-virtual {v2}, Lcom/aispeech/speech/a$b;->a()I

    move-result v2

    new-instance v3, Lcom/aispeech/AIError;

    const v4, 0x11500

    const-string v5, "VAD\u8d44\u6e90\u51c6\u5907\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u5b58\u653e\u5728assets\u76ee\u5f55\u4e0b"

    invoke-direct {v3, v4, v5}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    return v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/aispeech/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aispeech/a;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lcom/aispeech/a;->d()Lcom/aispeech/d/a;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/aispeech/a;->d()Lcom/aispeech/d/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/aispeech/d/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/aispeech/d/a;->a(Ljava/lang/String;)V

    :cond_3
    sget-boolean v0, Lcom/aispeech/common/AIConstant;->NEW_ECHO_ENABLE:Z

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aispeech/speech/a;->m:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/aispeech/a;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/aispeech/speech/a;->n:Landroid/os/Handler;

    sget-object v2, Lcom/aispeech/speech/a$b;->k:Lcom/aispeech/speech/a$b;

    invoke-virtual {v2}, Lcom/aispeech/speech/a$b;->a()I

    move-result v2

    new-instance v3, Lcom/aispeech/AIError;

    const v4, 0x11507

    const-string v5, "AEC\u8d44\u6e90\u51c6\u5907\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u5b58\u653e\u5728assets\u76ee\u5f55\u4e0b"

    invoke-direct {v3, v4, v5}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lcom/aispeech/common/AIConstant;->ECHO_CFG_FILE:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aispeech/a;->a(Ljava/lang/String;)V

    :cond_5
    if-nez v4, :cond_7

    const/4 v0, 0x0

    :goto_4
    iget-object v4, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "config"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aispeech/speech/a;->m:Landroid/content/Context;

    invoke-virtual {v5, v0, v4}, Lcom/aispeech/AIEngine;->a(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AIEngine create return "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_8

    move v0, v1

    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v4}, Lcom/aispeech/a;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_5

    :cond_9
    move v1, v0

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/aispeech/speech/a;Lcom/aispeech/AIEngine;)Lcom/aispeech/AIEngine;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/a;->b:Lcom/aispeech/AIEngine;

    return-object p1
.end method

.method static synthetic a(Lcom/aispeech/speech/a;Lcom/aispeech/a/e;)Lcom/aispeech/a/e;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/a;->h:Lcom/aispeech/a/e;

    return-object p1
.end method

.method static synthetic a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$c;)Lcom/aispeech/speech/a$c;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/a;->D:Lcom/aispeech/speech/a$c;

    return-object p1
.end method

.method static synthetic a(Lcom/aispeech/speech/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/aispeech/AIEngine;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/aispeech/AIEngine;->c()I

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

.method private a(Lcom/aispeech/speech/a$a;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/speech/a;->p:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/aispeech/speech/a$a;->a()I

    move-result v1

    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/speech/a;->o:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/a;->n:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/aispeech/speech/a$b;->a()I

    move-result v1

    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aispeech/speech/a;Lcom/aispeech/AIResult;)V
    .locals 2

    iput-object p1, p0, Lcom/aispeech/speech/a;->w:Lcom/aispeech/AIResult;

    new-instance v0, Lcom/aispeech/common/JSONResultParser;

    iget-object v1, p0, Lcom/aispeech/speech/a;->w:Lcom/aispeech/AIResult;

    invoke-virtual {v1}, Lcom/aispeech/AIResult;->getResultObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aispeech/common/JSONResultParser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aispeech/speech/a;->y:Lcom/aispeech/common/JSONResultParser;

    return-void
.end method

.method static synthetic a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$a;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$a;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/speech/a;->D:Lcom/aispeech/speech/a$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid State\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/speech/a;->D:Lcom/aispeech/speech/a$c;

    invoke-virtual {v2}, Lcom/aispeech/speech/a$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when MSG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aispeech/speech/a$b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/d;Lcom/aispeech/AIEngine;)V
    .locals 6

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aispeech/speech/a;->m:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/aispeech/common/e;->a(Landroid/content/Context;Lcom/aispeech/speech/d;)V

    invoke-virtual {p1}, Lcom/aispeech/speech/d;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "native"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/aispeech/speech/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/speech/a;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/aispeech/common/Util;->getNetworkQuality(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/aispeech/speech/d;->g(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/aispeech/speech/d;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SpeechParams:\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/speech/a;->C:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p2, v0, p0}, Lcom/aispeech/AIEngine;->a(Ljava/lang/String;Lcom/aispeech/AIEngine$aiengine_callback;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/aispeech/speech/a$b;->k:Lcom/aispeech/speech/a$b;

    new-instance v2, Lcom/aispeech/AIError;

    const v3, 0x114f6

    const-string v4, "\u65e0\u6cd5\u542f\u52a8\u5f15\u64ce!"

    invoke-direct {v2, v3, v4}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/aispeech/speech/a;->C:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/aispeech/AIEngine;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/aispeech/speech/a;[B)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->g:Lcom/aispeech/speech/d;

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/a;->F:Lcom/aispeech/common/WavFileWriter;

    invoke-virtual {v0, p1}, Lcom/aispeech/common/WavFileWriter;->writeWavData([B)V

    :cond_0
    return-void
.end method

.method private a(Lcom/aispeech/a;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aispeech/speech/a;->m:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/aispeech/speech/a;->m:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/aispeech/c;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/aispeech/speech/a$b;->k:Lcom/aispeech/speech/a$b;

    new-instance v1, Lcom/aispeech/AIError;

    const v2, 0x11501

    const-string v3, "\u8bc1\u4e66\u6587\u4ef6\u51c6\u5907\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5provision.file\u6587\u4ef6\u662f\u5426\u5b58\u653e\u5728assets\u76ee\u5f55\u4e0b"

    invoke-direct {v1, v2, v3}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

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

.method static synthetic a(Lcom/aispeech/speech/a$b;)Z
    .locals 1

    sget-object v0, Lcom/aispeech/speech/a$b;->n:Lcom/aispeech/speech/a$b;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/aispeech/speech/a$b;->j:Lcom/aispeech/speech/a$b;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/aispeech/speech/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/speech/a;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/aispeech/speech/a;Lcom/aispeech/AIEngine;)Lcom/aispeech/AIEngine;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/a;->e:Lcom/aispeech/AIEngine;

    return-object p1
.end method

.method static synthetic b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->D:Lcom/aispeech/speech/a$c;

    return-object v0
.end method

.method static synthetic b(Lcom/aispeech/AIEngine;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/aispeech/AIEngine;->b()I

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/aispeech/speech/a;Lcom/aispeech/AIResult;)V
    .locals 2

    iput-object p1, p0, Lcom/aispeech/speech/a;->v:Lcom/aispeech/AIResult;

    new-instance v0, Lcom/aispeech/common/JSONResultParser;

    iget-object v1, p0, Lcom/aispeech/speech/a;->v:Lcom/aispeech/AIResult;

    invoke-virtual {v1}, Lcom/aispeech/AIResult;->getResultObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aispeech/common/JSONResultParser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aispeech/speech/a;->x:Lcom/aispeech/common/JSONResultParser;

    return-void
.end method

.method static synthetic b(Lcom/aispeech/speech/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/speech/a;->r:Z

    return p1
.end method

.method static synthetic c(Lcom/aispeech/AIEngine;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/aispeech/AIEngine;->d()I

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/aispeech/speech/a;Lcom/aispeech/AIResult;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/aispeech/AIResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "input"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aispeech/speech/a;->c:Lcom/aispeech/a;

    iget-object v2, p0, Lcom/aispeech/speech/a;->d:Lcom/aispeech/speech/d;

    invoke-static {v0, v1, v2}, Lcom/aispeech/common/e;->a(Lorg/json/JSONObject;Lcom/aispeech/a;Lcom/aispeech/speech/d;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/aispeech/speech/a;->f:Lcom/aispeech/a;

    iget-object v2, p0, Lcom/aispeech/speech/a;->g:Lcom/aispeech/speech/d;

    invoke-static {v0, v1, v2}, Lcom/aispeech/common/e;->a(Lorg/json/JSONObject;Lcom/aispeech/a;Lcom/aispeech/speech/d;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/aispeech/speech/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/speech/a;->r:Z

    return v0
.end method

.method static synthetic d(Lcom/aispeech/speech/a;)Lcom/aispeech/a;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->c:Lcom/aispeech/a;

    return-object v0
.end method

.method static synthetic e(Lcom/aispeech/speech/a;)Lcom/aispeech/a;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->f:Lcom/aispeech/a;

    return-object v0
.end method

.method static synthetic f(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->b:Lcom/aispeech/AIEngine;

    return-object v0
.end method

.method static synthetic g(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->e:Lcom/aispeech/AIEngine;

    return-object v0
.end method

.method static synthetic h(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/d;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->g:Lcom/aispeech/speech/d;

    return-object v0
.end method

.method static synthetic i(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/d;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->d:Lcom/aispeech/speech/d;

    return-object v0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->J:Lcom/aispeech/speech/a$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/a;->J:Lcom/aispeech/speech/a$e;

    invoke-virtual {v0}, Lcom/aispeech/speech/a$e;->cancel()Z

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/aispeech/speech/a;)Lcom/aispeech/a/e;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->h:Lcom/aispeech/a/e;

    return-object v0
.end method

.method private j()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/aispeech/speech/a;->G:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-direct {p0}, Lcom/aispeech/speech/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static synthetic k(Lcom/aispeech/speech/a;)Lcom/aispeech/a/e;
    .locals 3

    iget-object v0, p0, Lcom/aispeech/speech/a;->g:Lcom/aispeech/speech/d;

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->n()Lcom/aispeech/AISampleRate;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/speech/a;->g:Lcom/aispeech/speech/d;

    invoke-virtual {v1}, Lcom/aispeech/speech/d;->o()I

    move-result v1

    iget-object v2, p0, Lcom/aispeech/speech/a;->g:Lcom/aispeech/speech/d;

    invoke-virtual {v2}, Lcom/aispeech/speech/d;->j()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/a/b;->a(Lcom/aispeech/AISampleRate;II)Lcom/aispeech/a/b;

    move-result-object v0

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aispeech/speech/a;->y:Lcom/aispeech/common/JSONResultParser;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/speech/a;->y:Lcom/aispeech/common/JSONResultParser;

    invoke-virtual {v1}, Lcom/aispeech/common/JSONResultParser;->getSem()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "domain"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Local domain="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aispeech/speech/a;->x:Lcom/aispeech/common/JSONResultParser;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/speech/a;->x:Lcom/aispeech/common/JSONResultParser;

    invoke-virtual {v1}, Lcom/aispeech/common/JSONResultParser;->getSemantics()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "request"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "domain"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cloud domain="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic l(Lcom/aispeech/speech/a;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/speech/a;->h:Lcom/aispeech/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/a;->h:Lcom/aispeech/a/e;

    invoke-interface {v0, p0}, Lcom/aispeech/a/e;->a(Lcom/aispeech/a/d;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aispeech/speech/a;->i:J

    iget-object v0, p0, Lcom/aispeech/speech/a;->g:Lcom/aispeech/speech/d;

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/a;->h:Lcom/aispeech/a/e;

    invoke-interface {v0}, Lcom/aispeech/a/e;->f()V

    :cond_0
    return-void
.end method

.method private m()F
    .locals 4

    iget v0, p0, Lcom/aispeech/speech/a;->z:F

    iget-object v1, p0, Lcom/aispeech/speech/a;->y:Lcom/aispeech/common/JSONResultParser;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/speech/a;->y:Lcom/aispeech/common/JSONResultParser;

    invoke-virtual {v1}, Lcom/aispeech/common/JSONResultParser;->getSem()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "thresh"

    iget v2, p0, Lcom/aispeech/speech/a;->z:F

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    :cond_0
    iget-object v1, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLocalRealThresh : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic m(Lcom/aispeech/speech/a;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/speech/a;->g:Lcom/aispeech/speech/d;

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aispeech/speech/a;->g:Lcom/aispeech/speech/d;

    invoke-virtual {v1}, Lcom/aispeech/speech/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/speech/a;->h:Lcom/aispeech/a/e;

    invoke-static {v0, v1}, Lcom/aispeech/common/WavFileWriter;->createWavFileWriter(Ljava/io/File;Lcom/aispeech/a/e;)Lcom/aispeech/common/WavFileWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/speech/a;->F:Lcom/aispeech/common/WavFileWriter;

    :cond_0
    return-void
.end method

.method private n()F
    .locals 2

    iget-object v0, p0, Lcom/aispeech/speech/a;->y:Lcom/aispeech/common/JSONResultParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/a;->y:Lcom/aispeech/common/JSONResultParser;

    invoke-virtual {v0}, Lcom/aispeech/common/JSONResultParser;->getConf()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic n(Lcom/aispeech/speech/a;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->K:Lcom/aispeech/speech/a$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/a;->K:Lcom/aispeech/speech/a$f;

    invoke-virtual {v0}, Lcom/aispeech/speech/a$f;->cancel()Z

    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/aispeech/speech/a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->C:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic p(Lcom/aispeech/speech/a;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/speech/a;->L:Lcom/aispeech/speech/a$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/a;->L:Lcom/aispeech/speech/a$d;

    invoke-virtual {v0}, Lcom/aispeech/speech/a$d;->cancel()Z

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/a;->h:Lcom/aispeech/a/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/speech/a;->h:Lcom/aispeech/a/e;

    invoke-interface {v0, p0}, Lcom/aispeech/a/e;->c(Lcom/aispeech/a/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    const-string v1, "detect recording , unRegister recorder!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/speech/a;->h:Lcom/aispeech/a/e;

    invoke-interface {v0, p0}, Lcom/aispeech/a/e;->b(Lcom/aispeech/a/d;)V

    :cond_1
    return-void
.end method

.method static synthetic q(Lcom/aispeech/speech/a;)V
    .locals 7

    invoke-static {}, Lcom/aispeech/speech/a$b;->values()[Lcom/aispeech/speech/a$b;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/aispeech/speech/a$b;->b()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/aispeech/speech/a;->n:Landroid/os/Handler;

    invoke-static {v3}, Lcom/aispeech/speech/a$b;->a(Lcom/aispeech/speech/a$b;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/aispeech/speech/a;->n:Landroid/os/Handler;

    invoke-static {v3}, Lcom/aispeech/speech/a$b;->a(Lcom/aispeech/speech/a$b;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "clear message: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/aispeech/speech/a$b;->name()Ljava/lang/String;

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

.method static synthetic r(Lcom/aispeech/speech/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/speech/a;->s:Z

    return v0
.end method

.method static synthetic s(Lcom/aispeech/speech/a;)V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/speech/a;->K:Lcom/aispeech/speech/a$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/a;->K:Lcom/aispeech/speech/a$f;

    invoke-virtual {v0}, Lcom/aispeech/speech/a$f;->cancel()Z

    :cond_0
    new-instance v0, Lcom/aispeech/speech/a$f;

    invoke-direct {v0, p0}, Lcom/aispeech/speech/a$f;-><init>(Lcom/aispeech/speech/a;)V

    iput-object v0, p0, Lcom/aispeech/speech/a;->K:Lcom/aispeech/speech/a$f;

    :try_start_0
    invoke-static {}, Lcom/aispeech/common/AITimer;->getInstance()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/speech/a;->K:Lcom/aispeech/speech/a$f;

    iget-wide v2, p0, Lcom/aispeech/speech/a;->B:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic t(Lcom/aispeech/speech/a;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->g:Lcom/aispeech/speech/d;

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/a;->F:Lcom/aispeech/common/WavFileWriter;

    invoke-virtual {v0}, Lcom/aispeech/common/WavFileWriter;->closeWav()V

    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/aispeech/speech/a;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->h:Lcom/aispeech/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/a;->h:Lcom/aispeech/a/e;

    invoke-interface {v0}, Lcom/aispeech/a/e;->a()V

    :cond_0
    return-void
.end method

.method static synthetic v(Lcom/aispeech/speech/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/aispeech/speech/a;->i()V

    return-void
.end method

.method static synthetic w(Lcom/aispeech/speech/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/aispeech/speech/a;->i:J

    return-wide v0
.end method

.method static synthetic x(Lcom/aispeech/speech/a;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/speech/a;->w:Lcom/aispeech/AIResult;

    iput-object v0, p0, Lcom/aispeech/speech/a;->y:Lcom/aispeech/common/JSONResultParser;

    iput-object v0, p0, Lcom/aispeech/speech/a;->v:Lcom/aispeech/AIResult;

    iput-object v0, p0, Lcom/aispeech/speech/a;->x:Lcom/aispeech/common/JSONResultParser;

    return-void
.end method

.method static synthetic y(Lcom/aispeech/speech/a;)V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/speech/a;->J:Lcom/aispeech/speech/a$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/a;->J:Lcom/aispeech/speech/a$e;

    invoke-virtual {v0}, Lcom/aispeech/speech/a$e;->cancel()Z

    :cond_0
    new-instance v0, Lcom/aispeech/speech/a$e;

    invoke-direct {v0, p0}, Lcom/aispeech/speech/a$e;-><init>(Lcom/aispeech/speech/a;)V

    iput-object v0, p0, Lcom/aispeech/speech/a;->J:Lcom/aispeech/speech/a$e;

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/speech/a;->g:Lcom/aispeech/speech/d;

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->k()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/aispeech/common/AITimer;->getInstance()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/speech/a;->J:Lcom/aispeech/speech/a$e;

    iget-object v2, p0, Lcom/aispeech/speech/a;->g:Lcom/aispeech/speech/d;

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

.method static synthetic z(Lcom/aispeech/speech/a;)V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/speech/a;->L:Lcom/aispeech/speech/a$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/a;->L:Lcom/aispeech/speech/a$d;

    invoke-virtual {v0}, Lcom/aispeech/speech/a$d;->cancel()Z

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/a;->g:Lcom/aispeech/speech/d;

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->j()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/aispeech/speech/a$d;

    invoke-direct {v0, p0}, Lcom/aispeech/speech/a$d;-><init>(Lcom/aispeech/speech/a;)V

    iput-object v0, p0, Lcom/aispeech/speech/a;->L:Lcom/aispeech/speech/a$d;

    :try_start_0
    invoke-static {}, Lcom/aispeech/common/AITimer;->getInstance()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/speech/a;->L:Lcom/aispeech/speech/a$d;

    iget-object v2, p0, Lcom/aispeech/speech/a;->g:Lcom/aispeech/speech/d;

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


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lcom/aispeech/speech/a$b;->d:Lcom/aispeech/speech/a$b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(F)V
    .locals 2

    sget-object v0, Lcom/aispeech/speech/a$b;->j:Lcom/aispeech/speech/a$b;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(J)V
    .locals 3

    sget-object v0, Lcom/aispeech/speech/a$b;->m:Lcom/aispeech/speech/a$b;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(J[BI)V
    .locals 5

    const/4 v3, 0x0

    new-array v0, p4, [B

    invoke-static {p3, v3, v0, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget-object v0, Lcom/aispeech/speech/a$b;->n:Lcom/aispeech/speech/a$b;

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/aispeech/AIError;)V
    .locals 1

    sget-object v0, Lcom/aispeech/speech/a$b;->k:Lcom/aispeech/speech/a$b;

    invoke-direct {p0, v0, p1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/aispeech/IMergeRule;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/a;->q:Lcom/aispeech/IMergeRule;

    return-void
.end method

.method public final a(Lcom/aispeech/speech/c;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/a;->l:Lcom/aispeech/speech/c;

    return-void
.end method

.method public final a(Lcom/aispeech/speech/c;Lcom/aispeech/a;Lcom/aispeech/a;)V
    .locals 2

    sget-object v0, Lcom/aispeech/speech/a$c;->c:Lcom/aispeech/speech/a$c;

    iput-object v0, p0, Lcom/aispeech/speech/a;->E:Lcom/aispeech/speech/a$c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/aispeech/speech/a;->l:Lcom/aispeech/speech/c;

    iput-object p2, p0, Lcom/aispeech/speech/a;->f:Lcom/aispeech/a;

    iput-object p3, p0, Lcom/aispeech/speech/a;->c:Lcom/aispeech/a;

    invoke-virtual {p2}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/speech/a;->m:Landroid/content/Context;

    iget-object v0, p0, Lcom/aispeech/speech/a;->m:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "AISpeech Error"

    const-string v1, "context equaling null is not allowed !!!!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/aispeech/d/b;

    invoke-direct {v0, p0}, Lcom/aispeech/d/b;-><init>(Lcom/aispeech/d/c;)V

    iput-object v0, p0, Lcom/aispeech/speech/a;->j:Lcom/aispeech/d/b;

    new-instance v0, Lcom/aispeech/b;

    invoke-direct {v0}, Lcom/aispeech/b;-><init>()V

    iput-object v0, p0, Lcom/aispeech/speech/a;->k:Lcom/aispeech/b;

    invoke-static {}, Lcom/aispeech/common/b;->a()Lcom/aispeech/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/common/b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/speech/a;->o:Landroid/os/Looper;

    new-instance v0, Lcom/aispeech/speech/a$1;

    iget-object v1, p0, Lcom/aispeech/speech/a;->o:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/aispeech/speech/a$1;-><init>(Lcom/aispeech/speech/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/aispeech/speech/a;->n:Landroid/os/Handler;

    invoke-static {}, Lcom/aispeech/common/Util;->isUnitTesting()Z

    move-result v1

    iget-object v0, p0, Lcom/aispeech/speech/a;->m:Landroid/content/Context;

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
    new-instance v1, Lcom/aispeech/speech/a$2;

    invoke-direct {v1, p0, v0}, Lcom/aispeech/speech/a$2;-><init>(Lcom/aispeech/speech/a;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/aispeech/speech/a;->p:Landroid/os/Handler;

    sget-object v0, Lcom/aispeech/speech/a$b;->a:Lcom/aispeech/speech/a$b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/aispeech/speech/d;Lcom/aispeech/speech/d;)V
    .locals 2

    sget-object v0, Lcom/aispeech/speech/a$c;->c:Lcom/aispeech/speech/a$c;

    iput-object v0, p0, Lcom/aispeech/speech/a;->E:Lcom/aispeech/speech/a$c;

    iput-object p1, p0, Lcom/aispeech/speech/a;->g:Lcom/aispeech/speech/d;

    iput-object p2, p0, Lcom/aispeech/speech/a;->d:Lcom/aispeech/speech/d;

    sget-object v0, Lcom/aispeech/speech/a$b;->b:Lcom/aispeech/speech/a$b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/speech/a;->n:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/aispeech/speech/a$b;->r:Lcom/aispeech/speech/a$b;

    invoke-direct {p0, v0, p1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    const-string v1, "must init engine before call opt!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/a;->I:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/speech/a;->n:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/aispeech/speech/a$b;->s:Lcom/aispeech/speech/a$b;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    const-string v1, "must init engine before call set cloud enable!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a([B)V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/speech/a;->n:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v1, Lcom/aispeech/speech/a$b;->n:Lcom/aispeech/speech/a$b;

    invoke-direct {p0, v1, v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    const-string v1, "must init engine before call feed!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/a;->G:[Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/aispeech/speech/a;->p:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/a;->p:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aispeech/speech/a$c;->e:Lcom/aispeech/speech/a$c;

    iput-object v0, p0, Lcom/aispeech/speech/a;->E:Lcom/aispeech/speech/a$c;

    invoke-direct {p0}, Lcom/aispeech/speech/a;->i()V

    sget-object v0, Lcom/aispeech/speech/a$b;->c:Lcom/aispeech/speech/a$b;

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(F)V
    .locals 0

    iput p1, p0, Lcom/aispeech/speech/a;->z:F

    return-void
.end method

.method public final b(J)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/speech/a;->n:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/a;->n:Landroid/os/Handler;

    sget-object v1, Lcom/aispeech/speech/a$b;->n:Lcom/aispeech/speech/a$b;

    invoke-virtual {v1}, Lcom/aispeech/speech/a$b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-object v0, Lcom/aispeech/speech/a$b;->f:Lcom/aispeech/speech/a$b;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/speech/a;->t:Z

    return-void
.end method

.method public final b([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/a;->H:[Ljava/lang/String;

    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/aispeech/speech/a;->n:Landroid/os/Handler;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/speech/a;->n:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/aispeech/speech/a$b;->g:Lcom/aispeech/speech/a$b;

    invoke-direct {p0, v0, v2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    sget-object v0, Lcom/aispeech/speech/a$a;->e:Lcom/aispeech/speech/a$a;

    invoke-direct {p0, v0, v2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$a;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c(F)V
    .locals 0

    iput p1, p0, Lcom/aispeech/speech/a;->A:F

    return-void
.end method

.method public final c(J)V
    .locals 1

    iput-wide p1, p0, Lcom/aispeech/speech/a;->B:J

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/speech/a;->u:Z

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "mix"

    return-object v0
.end method

.method public final e()V
    .locals 2

    sget-object v0, Lcom/aispeech/speech/a$b;->e:Lcom/aispeech/speech/a$b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/aispeech/speech/a;->m:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/aispeech/speech/a;->m:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/aispeech/speech/a;->c:Lcom/aispeech/a;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/aispeech/speech/a;->c:Lcom/aispeech/a;

    :cond_1
    iget-object v0, p0, Lcom/aispeech/speech/a;->f:Lcom/aispeech/a;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/aispeech/speech/a;->f:Lcom/aispeech/a;

    :cond_2
    iput-object v1, p0, Lcom/aispeech/speech/a;->l:Lcom/aispeech/speech/c;

    iput-object v1, p0, Lcom/aispeech/speech/a;->d:Lcom/aispeech/speech/d;

    iput-object v1, p0, Lcom/aispeech/speech/a;->g:Lcom/aispeech/speech/d;

    iput-object v1, p0, Lcom/aispeech/speech/a;->j:Lcom/aispeech/d/b;

    iput-object v1, p0, Lcom/aispeech/speech/a;->k:Lcom/aispeech/b;

    iget-object v0, p0, Lcom/aispeech/speech/a;->C:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aispeech/speech/a;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/aispeech/speech/a;->C:Ljava/util/Map;

    :cond_3
    iput-object v1, p0, Lcom/aispeech/speech/a;->b:Lcom/aispeech/AIEngine;

    iput-object v1, p0, Lcom/aispeech/speech/a;->e:Lcom/aispeech/AIEngine;

    return-void
.end method

.method public final g()V
    .locals 2

    sget-object v0, Lcom/aispeech/speech/a$b;->h:Lcom/aispeech/speech/a$b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/speech/a;->n:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/a;->n:Landroid/os/Handler;

    sget-object v1, Lcom/aispeech/speech/a$b;->n:Lcom/aispeech/speech/a$b;

    invoke-virtual {v1}, Lcom/aispeech/speech/a$b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-object v0, Lcom/aispeech/speech/a$b;->i:Lcom/aispeech/speech/a$b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final run([BI[BI)I
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/aispeech/speech/a;->C:Ljava/util/Map;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    new-array v5, p4, [B

    invoke-static {p3, v2, v5, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/aispeech/speech/a;->C:Ljava/util/Map;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/speech/a;->C:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    const-string v1, "recordid not found in recordId-queryType map, unknown type!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/aispeech/common/AIConstant;->AIENGINE_MESSAGE_TYPE_JSON:I

    if-ne p2, v0, :cond_0

    invoke-static {v5}, Lcom/aispeech/common/Util;->newUTF8String([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "discard callback result :"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit v6

    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Lcom/aispeech/common/AIConstant;->AIENGINE_MESSAGE_TYPE_JSON:I

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/aispeech/speech/a;->g:Lcom/aispeech/speech/d;

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aispeech/speech/a;->j:Lcom/aispeech/d/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aispeech/speech/a;->C:Ljava/util/Map;

    iget-object v6, p0, Lcom/aispeech/speech/a;->b:Lcom/aispeech/AIEngine;

    invoke-virtual {v6}, Lcom/aispeech/AIEngine;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/aispeech/d/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/aispeech/speech/a;->j:Lcom/aispeech/d/b;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v6}, Lcom/aispeech/d/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/aispeech/speech/a;->k:Lcom/aispeech/b;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/aispeech/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/aispeech/speech/a$b;->k:Lcom/aispeech/speech/a$b;

    new-instance v1, Lcom/aispeech/AIError;

    invoke-static {v5}, Lcom/aispeech/common/Util;->newUTF8String([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/aispeech/AIError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    move v2, v3

    goto :goto_0

    :cond_5
    invoke-static {p2, v4, v5}, Lcom/aispeech/AIResult;->bundleResults(ILjava/lang/String;[B)Lcom/aispeech/AIResult;

    move-result-object v6

    sget v0, Lcom/aispeech/common/AIConstant;->AIENGINE_MESSAGE_TYPE_JSON:I

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "callback:"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aispeech/common/JSONResultParser;

    invoke-virtual {v6}, Lcom/aispeech/AIResult;->getResultObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/aispeech/common/JSONResultParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aispeech/common/JSONResultParser;->getEof()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v6, v0}, Lcom/aispeech/AIResult;->setLast(Z)V

    :goto_2
    iget-object v0, p0, Lcom/aispeech/speech/a;->C:Ljava/util/Map;

    iget-object v1, p0, Lcom/aispeech/speech/a;->e:Lcom/aispeech/AIEngine;

    invoke-virtual {v1}, Lcom/aispeech/AIEngine;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/aispeech/speech/a$b;->l:Lcom/aispeech/speech/a$b;

    invoke-direct {p0, v0, v6}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/aispeech/speech/a;->a:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/aispeech/AIResult;->getResultObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    sget v0, Lcom/aispeech/common/AIConstant;->AIENGINE_MESSAGE_TYPE_BIN:I

    if-ne p2, v0, :cond_a

    if-nez p4, :cond_9

    :goto_4
    invoke-virtual {v6, v1}, Lcom/aispeech/AIResult;->setLast(Z)V

    goto :goto_2

    :cond_9
    move v1, v2

    goto :goto_4

    :cond_a
    move v2, v3

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/aispeech/speech/a;->b:Lcom/aispeech/AIEngine;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aispeech/speech/a;->C:Ljava/util/Map;

    iget-object v1, p0, Lcom/aispeech/speech/a;->b:Lcom/aispeech/AIEngine;

    invoke-virtual {v1}, Lcom/aispeech/AIEngine;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/aispeech/speech/a$b;->p:Lcom/aispeech/speech/a$b;

    invoke-direct {p0, v0, v6}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    goto :goto_3
.end method
