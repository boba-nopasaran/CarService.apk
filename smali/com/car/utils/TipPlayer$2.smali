.class Lcom/car/utils/TipPlayer$2;
.super Ljava/lang/Object;
.source "TipPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/utils/TipPlayer;->doPlaySpeech(Ljava/lang/String;ILjava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/utils/TipPlayer;

.field final synthetic val$speechId:Ljava/lang/String;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/utils/TipPlayer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/utils/TipPlayer$2;->this$0:Lcom/car/utils/TipPlayer;

    iput-object p2, p0, Lcom/car/utils/TipPlayer$2;->val$speechId:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/utils/TipPlayer$2;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/car/utils/TipPlayer$2;->val$speechId:Ljava/lang/String;

    const-string v1, "_N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/utils/TipPlayer$2;->this$0:Lcom/car/utils/TipPlayer;

    iget-object v0, v0, Lcom/car/utils/TipPlayer;->mVoiceUI:Lcom/car/voice/VoiceUI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63d0\u793a\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/utils/TipPlayer$2;->val$str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/utils/TipPlayer$2;->this$0:Lcom/car/utils/TipPlayer;

    iget-object v0, v0, Lcom/car/utils/TipPlayer;->mVoiceUI:Lcom/car/voice/VoiceUI;

    iget-object v1, p0, Lcom/car/utils/TipPlayer$2;->val$str:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    goto :goto_0
.end method
