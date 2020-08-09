.class Lcom/ximalaya/speechcontrol/SpeechControler$1;
.super Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/speechcontrol/SpeechControler;


# direct methods
.method constructor <init>(Lcom/ximalaya/speechcontrol/SpeechControler;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/speechcontrol/SpeechControler$1;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler$1;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-static {v0, p1, p2, p3}, Lcom/ximalaya/speechcontrol/SpeechControler;->access$100(Lcom/ximalaya/speechcontrol/SpeechControler;Ljava/lang/String;J)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler$1;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/ximalaya/speechcontrol/SpeechControler;->access$000(Lcom/ximalaya/speechcontrol/SpeechControler;Ljava/lang/String;IJ)V

    return-void
.end method
