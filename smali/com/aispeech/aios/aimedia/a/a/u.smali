.class Lcom/aispeech/aios/aimedia/a/a/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/aispeech/aios/aimedia/a/a/k;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/u;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/u;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->c(Lcom/aispeech/aios/aimedia/a/a/k;)Lcom/ximalaya/speechcontrol/SpeechControler;

    move-result-object v0

    const-string v1, "e3a3c2d6f3aa52e55572a3af66619a83"

    const-string v2, "ef2ca3afc7db9c30b8d1ccb7f742c497"

    const-string v3, "com.aispeech.aios.adapter"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ximalaya/speechcontrol/SpeechControler;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
