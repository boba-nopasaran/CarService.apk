.class final Lcom/aispeech/tts/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/tts/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private synthetic a:Lcom/aispeech/tts/b;


# direct methods
.method constructor <init>(Lcom/aispeech/tts/b;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/tts/b$c;->a:Lcom/aispeech/tts/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/aispeech/tts/b$c;->a:Lcom/aispeech/tts/b;

    invoke-static {v0, v5}, Lcom/aispeech/tts/b;->a(Lcom/aispeech/tts/b;Z)Z

    iget-object v0, p0, Lcom/aispeech/tts/b$c;->a:Lcom/aispeech/tts/b;

    invoke-static {v0}, Lcom/aispeech/tts/b;->a(Lcom/aispeech/tts/b;)Lcom/aispeech/a/c;

    move-result-object v0

    new-instance v1, Lcom/aispeech/AIError;

    const v2, 0x11a0c

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5408\u6210MediaPlayer\u64ad\u653e\u5668\u9519\u8bef:what("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")  extra("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/aispeech/a/c;->a(Lcom/aispeech/AIError;)V

    return v5
.end method
