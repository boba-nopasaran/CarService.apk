.class public Lcom/aispeech/speech/d;
.super Lcom/aispeech/c/c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field private d:Lcom/aispeech/c/h;

.field private e:Lcom/aispeech/c/a;

.field private f:Lcom/aispeech/c/b;

.field private g:Lcom/aispeech/c/i;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:J

.field private n:I

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/aispeech/speech/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aispeech/speech/d;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/aispeech/c/c;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/aispeech/speech/d;->h:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/aispeech/speech/d;->i:I

    iput-boolean v2, p0, Lcom/aispeech/speech/d;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/speech/d;->l:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aispeech/speech/d;->m:J

    const/16 v0, 0x258

    iput v0, p0, Lcom/aispeech/speech/d;->n:I

    iput-boolean v2, p0, Lcom/aispeech/speech/d;->o:Z

    new-instance v0, Lcom/aispeech/c/h;

    invoke-direct {v0}, Lcom/aispeech/c/h;-><init>()V

    iput-object v0, p0, Lcom/aispeech/speech/d;->d:Lcom/aispeech/c/h;

    new-instance v0, Lcom/aispeech/c/a;

    invoke-direct {v0}, Lcom/aispeech/c/a;-><init>()V

    iput-object v0, p0, Lcom/aispeech/speech/d;->e:Lcom/aispeech/c/a;

    new-instance v0, Lcom/aispeech/c/b;

    invoke-direct {v0}, Lcom/aispeech/c/b;-><init>()V

    iput-object v0, p0, Lcom/aispeech/speech/d;->f:Lcom/aispeech/c/b;

    new-instance v0, Lcom/aispeech/c/i;

    invoke-direct {v0}, Lcom/aispeech/c/i;-><init>()V

    iput-object v0, p0, Lcom/aispeech/speech/d;->g:Lcom/aispeech/c/i;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/aispeech/speech/d;->s(Ljava/lang/String;)V

    sget-object v0, Lcom/aispeech/speech/d;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/aispeech/speech/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static m()Z
    .locals 1

    sget v0, Lcom/aispeech/d;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/aispeech/speech/d;->m:J

    return-void
.end method

.method public final a(Lcom/aispeech/AISampleRate;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->f:Lcom/aispeech/c/b;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/b;->a(Lcom/aispeech/AISampleRate;)V

    return-void
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->e:Lcom/aispeech/c/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/a;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/aispeech/speech/d;->d:Lcom/aispeech/c/h;

    invoke-virtual {v1}, Lcom/aispeech/c/h;->c()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/util/Map;)V

    iget-boolean v1, p0, Lcom/aispeech/speech/d;->l:Z

    if-eqz v1, :cond_0

    const-string v1, "audio"

    iget-object v2, p0, Lcom/aispeech/speech/d;->f:Lcom/aispeech/c/b;

    invoke-virtual {v2}, Lcom/aispeech/c/b;->d()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "echo"

    iget-object v2, p0, Lcom/aispeech/speech/d;->g:Lcom/aispeech/c/i;

    invoke-virtual {v2}, Lcom/aispeech/c/i;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v1, "app"

    iget-object v2, p0, Lcom/aispeech/speech/d;->e:Lcom/aispeech/c/a;

    invoke-virtual {v2}, Lcom/aispeech/c/a;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "request"

    iget-object v2, p0, Lcom/aispeech/speech/d;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/speech/d;->h:I

    return-void
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/speech/d;->i:I

    return-void
.end method

.method public final g(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->f:Lcom/aispeech/c/b;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/b;->a(I)V

    return-void
.end method

.method public final h(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->d:Lcom/aispeech/c/h;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/h;->a(I)V

    return-void
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/speech/d;->n:I

    return-void
.end method

.method public final i(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->d:Lcom/aispeech/c/h;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/h;->a(Z)V

    return-void
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/aispeech/speech/d;->h:I

    return v0
.end method

.method public final j(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/speech/d;->d:Lcom/aispeech/c/h;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/h;->b(Z)V

    return-void
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/aispeech/speech/d;->i:I

    return v0
.end method

.method public final k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/speech/d;->k:Z

    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/speech/d;->l:Z

    return-void
.end method

.method public final m(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/speech/d;->o:Z

    return-void
.end method

.method public final n()Lcom/aispeech/AISampleRate;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->f:Lcom/aispeech/c/b;

    invoke-virtual {v0}, Lcom/aispeech/c/b;->a()Lcom/aispeech/AISampleRate;

    move-result-object v0

    return-object v0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->f:Lcom/aispeech/c/b;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final o()I
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->f:Lcom/aispeech/c/b;

    invoke-virtual {v0}, Lcom/aispeech/c/b;->c()I

    move-result v0

    return v0
.end method

.method public final o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/d;->j:Ljava/lang/String;

    return-void
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->f:Lcom/aispeech/c/b;

    invoke-virtual {v0}, Lcom/aispeech/c/b;->b()V

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->g:Lcom/aispeech/c/i;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->d:Lcom/aispeech/c/h;

    invoke-virtual {v0}, Lcom/aispeech/c/h;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->f:Lcom/aispeech/c/b;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->d:Lcom/aispeech/c/h;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final r()Z
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->d:Lcom/aispeech/c/h;

    invoke-virtual {v0}, Lcom/aispeech/c/h;->a()Z

    move-result v0

    return v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->e:Lcom/aispeech/c/a;

    invoke-virtual {v0}, Lcom/aispeech/c/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->e:Lcom/aispeech/c/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->e:Lcom/aispeech/c/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/speech/d;->k:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/aispeech/speech/d;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()J
    .locals 2

    iget-wide v0, p0, Lcom/aispeech/speech/d;->m:J

    return-wide v0
.end method

.method public final u(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->e:Lcom/aispeech/c/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final v()I
    .locals 1

    iget v0, p0, Lcom/aispeech/speech/d;->n:I

    return v0
.end method

.method public final v(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->e:Lcom/aispeech/c/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->e:Lcom/aispeech/c/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/speech/d;->o:Z

    return v0
.end method

.method public final x(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->e:Lcom/aispeech/c/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/speech/d;->e:Lcom/aispeech/c/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/a;->g(Ljava/lang/String;)V

    return-void
.end method
