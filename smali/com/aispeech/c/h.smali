.class public final Lcom/aispeech/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aispeech/c/h;->a:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/c/h;->c:Z

    iput-boolean v1, p0, Lcom/aispeech/c/h;->d:Z

    iput v1, p0, Lcom/aispeech/c/h;->e:I

    const-string v0, "cloud"

    iput-object v0, p0, Lcom/aispeech/c/h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/c/h;->e:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/c/h;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/c/h;->c:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/c/h;->c:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/c/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/c/h;->d:Z

    return-void
.end method

.method public final c()Ljava/util/Map;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/aispeech/c/h;->a:Ljava/util/Map;

    const-string v3, "coreProvideType"

    iget-object v4, p0, Lcom/aispeech/c/h;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/aispeech/c/h;->a:Ljava/util/Map;

    const-string v4, "vadEnable"

    iget-boolean v0, p0, Lcom/aispeech/c/h;->c:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aispeech/c/h;->a:Ljava/util/Map;

    const-string v3, "volumeEnable"

    iget-boolean v4, p0, Lcom/aispeech/c/h;->d:Z

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/aispeech/c/h;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/c/h;->a:Ljava/util/Map;

    const-string v1, "pauseTime"

    iget v2, p0, Lcom/aispeech/c/h;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/aispeech/c/h;->a:Ljava/util/Map;

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
