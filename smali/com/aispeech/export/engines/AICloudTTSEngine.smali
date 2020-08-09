.class public Lcom/aispeech/export/engines/AICloudTTSEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/export/engines/AICloudTTSEngine$a;
    }
.end annotation


# instance fields
.field a:Lcom/aispeech/export/listeners/AITTSListener;

.field b:Ljava/lang/String;

.field private c:Lcom/aispeech/tts/e;

.field private d:Lcom/aispeech/a;

.field private e:Lcom/aispeech/c/g;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/aispeech/export/engines/AICloudTTSEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aispeech/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/aispeech/a;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->d:Lcom/aispeech/a;

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->d:Lcom/aispeech/a;

    const-string v1, "AICloudTTSEngine"

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->n(Ljava/lang/String;)V

    new-instance v0, Lcom/aispeech/c/g;

    invoke-direct {v0}, Lcom/aispeech/c/g;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->e:Lcom/aispeech/c/g;

    return-void
.end method

.method public static createInstance()Lcom/aispeech/export/engines/AICloudTTSEngine;
    .locals 1

    new-instance v0, Lcom/aispeech/export/engines/AICloudTTSEngine;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AICloudTTSEngine;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/aispeech/export/engines/AICloudTTSEngine;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/aispeech/export/engines/AICloudTTSEngine;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AICloudTTSEngine;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->c:Lcom/aispeech/tts/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->c:Lcom/aispeech/tts/e;

    invoke-virtual {v0}, Lcom/aispeech/tts/e;->d()V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/aispeech/export/listeners/AITTSListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iput-object p2, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->a:Lcom/aispeech/export/listeners/AITTSListener;

    new-instance v0, Lcom/aispeech/export/engines/AICloudTTSEngine$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aispeech/export/engines/AICloudTTSEngine$a;-><init>(Lcom/aispeech/export/engines/AICloudTTSEngine;B)V

    iget-object v1, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->d:Lcom/aispeech/a;

    invoke-virtual {v1, p1}, Lcom/aispeech/a;->b(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->d:Lcom/aispeech/a;

    invoke-virtual {v1, p3}, Lcom/aispeech/a;->h(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->d:Lcom/aispeech/a;

    invoke-virtual {v1, p4}, Lcom/aispeech/a;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->d:Lcom/aispeech/a;

    iget-object v2, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/aispeech/a;->e(Ljava/lang/String;)V

    new-instance v1, Lcom/aispeech/tts/e;

    iget-object v2, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->d:Lcom/aispeech/a;

    invoke-direct {v1, v0, v2}, Lcom/aispeech/tts/e;-><init>(Lcom/aispeech/tts/j;Lcom/aispeech/a;)V

    iput-object v1, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->c:Lcom/aispeech/tts/e;

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->c:Lcom/aispeech/tts/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->c:Lcom/aispeech/tts/e;

    invoke-virtual {v0}, Lcom/aispeech/tts/e;->a()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->c:Lcom/aispeech/tts/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->c:Lcom/aispeech/tts/e;

    invoke-virtual {v0}, Lcom/aispeech/tts/e;->b()V

    :cond_0
    return-void
.end method

.method public setDBable(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->f:Ljava/lang/String;

    return-void
.end method

.method public setDefaultIp([[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->a([[Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setHttpTransferTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->c(I)V

    return-void
.end method

.method public setLanguage(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->e:Lcom/aispeech/c/g;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/g;->d(I)V

    return-void
.end method

.method public setLeftMargin(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->e:Lcom/aispeech/c/g;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/g;->a(I)V

    return-void
.end method

.method public setLuaResName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setRealBack(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->e:Lcom/aispeech/c/g;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/g;->c(Z)V

    return-void
.end method

.method public setRes(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->e:Lcom/aispeech/c/g;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/g;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setResStoragePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->o(Ljava/lang/String;)V

    return-void
.end method

.method public setRightMargin(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->e:Lcom/aispeech/c/g;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/g;->b(I)V

    return-void
.end method

.method public setSavePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->e:Lcom/aispeech/c/g;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/g;->o(Ljava/lang/String;)V

    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->d:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->k(Ljava/lang/String;)V

    return-void
.end method

.method public setSpeechRate(F)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->e:Lcom/aispeech/c/g;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/g;->a(F)V

    return-void
.end method

.method public setSpeechVolume(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->e:Lcom/aispeech/c/g;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/g;->c(I)V

    return-void
.end method

.method public setStreamType(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->e:Lcom/aispeech/c/g;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/g;->j(I)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->e:Lcom/aispeech/c/g;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/g;->s(Ljava/lang/String;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->e:Lcom/aispeech/c/g;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->e:Lcom/aispeech/c/g;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/g;->e(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->c:Lcom/aispeech/tts/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->c:Lcom/aispeech/tts/e;

    iget-object v1, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->e:Lcom/aispeech/c/g;

    invoke-virtual {v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/k;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->c:Lcom/aispeech/tts/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine;->c:Lcom/aispeech/tts/e;

    invoke-virtual {v0}, Lcom/aispeech/tts/e;->c()V

    :cond_0
    return-void
.end method
