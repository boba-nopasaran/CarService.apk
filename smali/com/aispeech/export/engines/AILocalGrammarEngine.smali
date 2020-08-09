.class public Lcom/aispeech/export/engines/AILocalGrammarEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/export/engines/AILocalGrammarEngine$a;
    }
.end annotation


# static fields
.field public static final OUTPUT_NAME:Ljava/lang/String; = "local.net.bin"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private a:Lcom/aispeech/speech/b;

.field private b:Lcom/aispeech/a;

.field private c:Lcom/aispeech/b/f;

.field private d:Lcom/aispeech/c/m;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/aispeech/export/engines/AILocalGrammarEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aispeech/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/aispeech/a;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->b:Lcom/aispeech/a;

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->b:Lcom/aispeech/a;

    const-string v1, "localgram"

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->n(Ljava/lang/String;)V

    new-instance v0, Lcom/aispeech/b/f;

    invoke-direct {v0}, Lcom/aispeech/b/f;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->c:Lcom/aispeech/b/f;

    new-instance v0, Lcom/aispeech/c/m;

    invoke-direct {v0}, Lcom/aispeech/c/m;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->d:Lcom/aispeech/c/m;

    new-instance v0, Lcom/aispeech/speech/b;

    invoke-direct {v0}, Lcom/aispeech/speech/b;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->a:Lcom/aispeech/speech/b;

    return-void
.end method

.method public static createInstance()Lcom/aispeech/export/engines/AILocalGrammarEngine;
    .locals 1

    new-instance v0, Lcom/aispeech/export/engines/AILocalGrammarEngine;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AILocalGrammarEngine;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/aispeech/export/engines/AILocalGrammarEngine;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/aispeech/export/engines/AILocalGrammarEngine;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AILocalGrammarEngine;-><init>()V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->a:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->a:Lcom/aispeech/speech/b;

    invoke-virtual {v0}, Lcom/aispeech/speech/b;->f()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->a:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->a:Lcom/aispeech/speech/b;

    invoke-virtual {v0}, Lcom/aispeech/speech/b;->i()V

    :cond_0
    return-void
.end method

.method public getOutPutFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->d:Lcom/aispeech/c/m;

    invoke-virtual {v0}, Lcom/aispeech/c/m;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/aispeech/export/listeners/AILocalGrammarListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p3}, Lcom/aispeech/a;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p4}, Lcom/aispeech/a;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->b:Lcom/aispeech/a;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->b:Lcom/aispeech/a;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->e:Ljava/lang/String;

    aput-object v3, v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/aispeech/a;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->c:Lcom/aispeech/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/b/f;->a(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->b:Lcom/aispeech/a;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->c:Lcom/aispeech/b/f;

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->a(Lcom/aispeech/b/c;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->a:Lcom/aispeech/speech/b;

    new-instance v1, Lcom/aispeech/export/engines/AILocalGrammarEngine$a;

    invoke-direct {v1, p2}, Lcom/aispeech/export/engines/AILocalGrammarEngine$a;-><init>(Lcom/aispeech/export/listeners/AILocalGrammarListener;)V

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/c;Lcom/aispeech/a;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->d:Lcom/aispeech/c/m;

    invoke-virtual {v0}, Lcom/aispeech/c/m;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->d:Lcom/aispeech/c/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "local.net.bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/c/m;->e(Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const-string v2, "AISpeech Error"

    const-string v3, "ebnfc file name not set!"

    invoke-static {v2, v3}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->c:Lcom/aispeech/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v2}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/b/f;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->d:Lcom/aispeech/c/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v2}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "local.net.bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/c/m;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setDBable(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->f:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setEbnf(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->d:Lcom/aispeech/c/m;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/m;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setLuaResName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setOutputPath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->d:Lcom/aispeech/c/m;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/m;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setResFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->e:Ljava/lang/String;

    return-void
.end method

.method public setResStoragePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->o(Ljava/lang/String;)V

    return-void
.end method

.method public setUseIndividualThread(Z)V
    .locals 0

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->d:Lcom/aispeech/c/m;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/m;->s(Ljava/lang/String;)V

    return-void
.end method

.method public update()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->a:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->a:Lcom/aispeech/speech/b;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalGrammarEngine;->d:Lcom/aispeech/c/m;

    invoke-virtual {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/d;)V

    :cond_0
    return-void
.end method
