.class Lcom/car/voice/cmd/Music$5;
.super Ljava/lang/Object;
.source "Music.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/voice/cmd/Music;
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

    iput-object p1, p0, Lcom/car/voice/cmd/Music$5;->this$0:Lcom/car/voice/cmd/Music;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/car/voice/cmd/Music$5;->this$0:Lcom/car/voice/cmd/Music;

    iget-object v1, p0, Lcom/car/voice/cmd/Music$5;->this$0:Lcom/car/voice/cmd/Music;

    iget-object v1, v1, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-static {v0, v1}, Lcom/car/voice/cmd/Music;->access$300(Lcom/car/voice/cmd/Music;Lcom/car/voice/VoiceUI;)V

    return-void
.end method
