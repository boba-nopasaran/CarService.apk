.class public final Lcom/aispeech/c/l;
.super Lcom/aispeech/speech/d;
.source "SourceFile"


# instance fields
.field private c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/speech/d;-><init>()V

    const-string v0, "cn.dlgres"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/l;->a(Ljava/lang/String;)V

    const-string v0, "native"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/l;->r(Ljava/lang/String;)V

    const-string v0, "LocalDialogResParams"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/l;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aispeech/c/l;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "LocalDialogResParams"

    const-string v1, "Invalid addressBook Json"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/aispeech/c/l;->c:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lcom/aispeech/c/l;->a:Lorg/json/JSONObject;

    const-string v1, "addressBook"

    iget-object v2, p0, Lcom/aispeech/c/l;->c:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/aispeech/speech/d;->d()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
