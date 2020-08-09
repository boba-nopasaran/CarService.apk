.class public Lcom/aispeech/export/engines/AILocalDialogEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/export/engines/AILocalDialogEngine$a;
    }
.end annotation


# instance fields
.field a:Lcom/aispeech/export/listeners/AIDialogListener;

.field private b:Lcom/aispeech/speech/b;

.field private c:Lcom/aispeech/a;

.field private d:Lcom/aispeech/b/d;

.field private e:Lcom/aispeech/c/k;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/aispeech/export/engines/AILocalDialogEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aispeech/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aispeech/a;-><init>(Z)V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->c:Lcom/aispeech/a;

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->c:Lcom/aispeech/a;

    const-string v1, "localdlg"

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->n(Ljava/lang/String;)V

    new-instance v0, Lcom/aispeech/b/d;

    invoke-direct {v0}, Lcom/aispeech/b/d;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->d:Lcom/aispeech/b/d;

    new-instance v0, Lcom/aispeech/c/k;

    invoke-direct {v0}, Lcom/aispeech/c/k;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->e:Lcom/aispeech/c/k;

    new-instance v0, Lcom/aispeech/speech/b;

    invoke-direct {v0}, Lcom/aispeech/speech/b;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->b:Lcom/aispeech/speech/b;

    return-void
.end method

.method public static createInstance()Lcom/aispeech/export/engines/AILocalDialogEngine;
    .locals 1

    new-instance v0, Lcom/aispeech/export/engines/AILocalDialogEngine;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AILocalDialogEngine;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/aispeech/export/engines/AILocalDialogEngine;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/aispeech/export/engines/AILocalDialogEngine;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AILocalDialogEngine;-><init>()V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->b:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->b:Lcom/aispeech/speech/b;

    invoke-virtual {v0}, Lcom/aispeech/speech/b;->f()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->b:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->b:Lcom/aispeech/speech/b;

    invoke-virtual {v0}, Lcom/aispeech/speech/b;->i()V

    :cond_0
    iput-object v1, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->g:Ljava/lang/String;

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/aispeech/export/listeners/AIDialogListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iput-object p2, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p3}, Lcom/aispeech/a;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p4}, Lcom/aispeech/a;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->c:Lcom/aispeech/a;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->d:Lcom/aispeech/b/d;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->c:Lcom/aispeech/a;

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AISpeech Error"

    const-string v3, "sds zip file name not set!"

    invoke-static {v2, v3}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->g:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/aispeech/a;->a([Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/b/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->c:Lcom/aispeech/a;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->d:Lcom/aispeech/b/d;

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->a(Lcom/aispeech/b/c;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->b:Lcom/aispeech/speech/b;

    new-instance v1, Lcom/aispeech/export/engines/AILocalDialogEngine$a;

    invoke-direct {v1, p0}, Lcom/aispeech/export/engines/AILocalDialogEngine$a;-><init>(Lcom/aispeech/export/engines/AILocalDialogEngine;)V

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/c;Lcom/aispeech/a;)V

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->e:Lcom/aispeech/c/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aispeech/c/k;->c(Z)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->b:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->b:Lcom/aispeech/speech/b;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->e:Lcom/aispeech/c/k;

    invoke-virtual {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/d;)V

    :cond_0
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->e:Lcom/aispeech/c/k;

    invoke-virtual {v0}, Lcom/aispeech/c/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aispeech/c/k;

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->e:Lcom/aispeech/c/k;

    return-void
.end method

.method public setDBable(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->h:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setIsBin(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->d:Lcom/aispeech/b/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/b/d;->a(Z)V

    return-void
.end method

.method public setLuaResName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setMsgData(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->e:Lcom/aispeech/c/k;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/k;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public setMsgId(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->e:Lcom/aispeech/c/k;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/k;->a(I)V

    return-void
.end method

.method public setResource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->f:Ljava/lang/String;

    return-void
.end method

.method public setUseIndividualThread(Z)V
    .locals 0

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->e:Lcom/aispeech/c/k;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/k;->s(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->e:Lcom/aispeech/c/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aispeech/c/k;->c(Z)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->b:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->b:Lcom/aispeech/speech/b;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->e:Lcom/aispeech/c/k;

    invoke-virtual {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/d;)V

    :cond_0
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->e:Lcom/aispeech/c/k;

    invoke-virtual {v0}, Lcom/aispeech/c/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aispeech/c/k;

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine;->e:Lcom/aispeech/c/k;

    return-void
.end method
