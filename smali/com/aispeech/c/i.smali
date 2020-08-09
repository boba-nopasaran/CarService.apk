.class public final Lcom/aispeech/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/aispeech/c/i;->a:Lorg/json/JSONObject;

    const/16 v0, 0x200

    iput v0, p0, Lcom/aispeech/c/i;->c:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/aispeech/c/i;->d:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/aispeech/c/i;->e:I

    const/16 v0, 0x800

    iput v0, p0, Lcom/aispeech/c/i;->f:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/aispeech/c/i;->g:I

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lcom/aispeech/c/i;->a:Lorg/json/JSONObject;

    const-string v1, "type"

    sget v2, Lcom/aispeech/d;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/i;->a:Lorg/json/JSONObject;

    const-string v1, "wavePath"

    iget-object v2, p0, Lcom/aispeech/c/i;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/i;->a:Lorg/json/JSONObject;

    const-string v1, "backN"

    iget v2, p0, Lcom/aispeech/c/i;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/i;->a:Lorg/json/JSONObject;

    const-string v1, "filterLen"

    iget v2, p0, Lcom/aispeech/c/i;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/i;->a:Lorg/json/JSONObject;

    const-string v1, "frameLen"

    iget v2, p0, Lcom/aispeech/c/i;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/i;->a:Lorg/json/JSONObject;

    const-string v1, "time"

    iget v2, p0, Lcom/aispeech/c/i;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/i;->a:Lorg/json/JSONObject;

    const-string v1, "overlayTime"

    iget v2, p0, Lcom/aispeech/c/i;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/i;->a:Lorg/json/JSONObject;

    const-string v1, "recChannel"

    sget v2, Lcom/aispeech/common/AIConstant;->REC_CHANNEL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/i;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/c/i;->b:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/aispeech/c/i;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
