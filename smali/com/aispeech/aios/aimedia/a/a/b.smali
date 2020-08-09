.class Lcom/aispeech/aios/aimedia/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/aispeech/aios/aimedia/a/a/a;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/b;->a:Lcom/aispeech/aios/aimedia/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/b;->a:Lcom/aispeech/aios/aimedia/a/a/a;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/a;->b(Lcom/aispeech/aios/aimedia/a/a/a;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/b;->a:Lcom/aispeech/aios/aimedia/a/a/a;

    invoke-static {v1}, Lcom/aispeech/aios/aimedia/a/a/a;->a(Lcom/aispeech/aios/aimedia/a/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayResume(Landroid/content/Context;)V

    return-void
.end method
