.class public Lcom/aispeech/export/engines/AILocalDialogResEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/export/engines/AILocalDialogResEngine$a;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field a:Lcom/aispeech/export/listeners/AIDialogListener;

.field private c:Lcom/aispeech/speech/b;

.field private d:Lcom/aispeech/a;

.field private e:Lcom/aispeech/b/e;

.field private f:Lcom/aispeech/c/l;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aispeech/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aispeech/a;-><init>(Z)V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->d:Lcom/aispeech/a;

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->d:Lcom/aispeech/a;

    const-string v1, "dlgres"

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->n(Ljava/lang/String;)V

    new-instance v0, Lcom/aispeech/b/e;

    invoke-direct {v0}, Lcom/aispeech/b/e;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->e:Lcom/aispeech/b/e;

    new-instance v0, Lcom/aispeech/c/l;

    invoke-direct {v0}, Lcom/aispeech/c/l;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->f:Lcom/aispeech/c/l;

    new-instance v0, Lcom/aispeech/speech/b;

    invoke-direct {v0}, Lcom/aispeech/speech/b;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->c:Lcom/aispeech/speech/b;

    return-void
.end method

.method public static createInstance()Lcom/aispeech/export/engines/AILocalDialogResEngine;
    .locals 1

    new-instance v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AILocalDialogResEngine;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/aispeech/export/engines/AILocalDialogResEngine;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AILocalDialogResEngine;-><init>()V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->c:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->c:Lcom/aispeech/speech/b;

    invoke-virtual {v0}, Lcom/aispeech/speech/b;->f()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->c:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->c:Lcom/aispeech/speech/b;

    invoke-virtual {v0}, Lcom/aispeech/speech/b;->i()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->g:Ljava/lang/String;

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/aispeech/export/listeners/AIDialogListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iput-object p2, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p3}, Lcom/aispeech/a;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p4}, Lcom/aispeech/a;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->d:Lcom/aispeech/a;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->d:Lcom/aispeech/a;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AISpeech Error"

    const-string v2, "dlg res resource file name not set!"

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->h:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->b:Ljava/lang/String;

    const-string v1, "dialog res dir path not set, use default value."

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->g:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->e:Lcom/aispeech/b/e;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aispeech/b/e;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->d:Lcom/aispeech/a;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->e:Lcom/aispeech/b/e;

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->a(Lcom/aispeech/b/c;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->c:Lcom/aispeech/speech/b;

    new-instance v1, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;

    invoke-direct {v1, p0}, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;-><init>(Lcom/aispeech/export/engines/AILocalDialogResEngine;)V

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/c;Lcom/aispeech/a;)V

    return-void
.end method

.method public setDBable(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->i:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setLuaResName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setResDir(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->g:Ljava/lang/String;

    return-void
.end method

.method public setResName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->h:Ljava/lang/String;

    return-void
.end method

.method public setUseIndividualThread(Z)V
    .locals 0

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->f:Lcom/aispeech/c/l;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/l;->s(Ljava/lang/String;)V

    return-void
.end method

.method public start(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->f:Lcom/aispeech/c/l;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/l;->a(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->c:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->c:Lcom/aispeech/speech/b;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->f:Lcom/aispeech/c/l;

    invoke-virtual {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/d;)V

    :cond_0
    return-void
.end method
