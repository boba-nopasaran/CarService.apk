.class public final Lcom/aispeech/b/e;
.super Lcom/aispeech/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/b/a;-><init>()V

    const-string v0, "cn.dlgres"

    invoke-virtual {p0, v0}, Lcom/aispeech/b/e;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/b/e;->a:Lorg/json/JSONObject;

    const-string v1, "resDirPath"

    invoke-static {v0, v1, p1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
