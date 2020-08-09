.class Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final synthetic this$1:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;


# direct methods
.method constructor <init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1$1;->this$1:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1$1;->this$1:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$100(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/speechcontrol/IServiceDeathListener;

    invoke-interface {v0}, Lcom/ximalaya/speechcontrol/IServiceDeathListener;->onServiceDeath()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1$1;->this$1:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$202(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1$1;->this$1:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1$1;->this$1:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$002(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z

    return-void
.end method
