.class Lcom/car/voice/cmd/Music$8;
.super Ljava/lang/Object;
.source "Music.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/voice/cmd/Music;->nothingFound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/voice/cmd/Music;


# direct methods
.method constructor <init>(Lcom/car/voice/cmd/Music;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/cmd/Music$8;->this$0:Lcom/car/voice/cmd/Music;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "\u6ca1\u6709\u627e\u5230\u76f8\u5173\u6b4c\u66f2\uff0c\u8bf7\u91cd\u65b0\u5f00\u59cb"

    iget-object v1, p0, Lcom/car/voice/cmd/Music$8;->this$0:Lcom/car/voice/cmd/Music;

    iget-object v1, v1, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v1, v0}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    return-void
.end method
