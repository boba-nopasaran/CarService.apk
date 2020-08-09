.class Lcom/ximalaya/speechcontrol/SpeechControler$2;
.super Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/speechcontrol/SpeechControler;


# direct methods
.method constructor <init>(Lcom/ximalaya/speechcontrol/SpeechControler;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/speechcontrol/SpeechControler$2;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler$2;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    const-wide/16 v2, -0x64

    invoke-static {v0, p1, v2, v3}, Lcom/ximalaya/speechcontrol/SpeechControler;->access$100(Lcom/ximalaya/speechcontrol/SpeechControler;Ljava/lang/String;J)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler$2;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->access$200(Lcom/ximalaya/speechcontrol/SpeechControler;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ximalaya/speechcontrol/SpeechControler$2;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-static {v2, p1, p2, v0, v1}, Lcom/ximalaya/speechcontrol/SpeechControler;->access$000(Lcom/ximalaya/speechcontrol/SpeechControler;Ljava/lang/String;IJ)V

    return-void
.end method
