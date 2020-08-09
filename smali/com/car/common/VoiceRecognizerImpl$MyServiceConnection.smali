.class final Lcom/car/common/VoiceRecognizerImpl$MyServiceConnection;
.super Ljava/lang/Object;
.source "VoiceRecognizerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/common/VoiceRecognizerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/common/VoiceRecognizerImpl;


# direct methods
.method private constructor <init>(Lcom/car/common/VoiceRecognizerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/car/common/VoiceRecognizerImpl$MyServiceConnection;->this$0:Lcom/car/common/VoiceRecognizerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/common/VoiceRecognizerImpl;Lcom/car/common/VoiceRecognizerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/common/VoiceRecognizerImpl$MyServiceConnection;-><init>(Lcom/car/common/VoiceRecognizerImpl;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v1, p0, Lcom/car/common/VoiceRecognizerImpl$MyServiceConnection;->this$0:Lcom/car/common/VoiceRecognizerImpl;

    invoke-static {p2}, Lcom/car/common/IVoiceRecognizer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/car/common/IVoiceRecognizer;

    move-result-object v2

    iput-object v2, v1, Lcom/car/common/VoiceRecognizerImpl;->mService:Lcom/car/common/IVoiceRecognizer;

    :try_start_0
    iget-object v1, p0, Lcom/car/common/VoiceRecognizerImpl$MyServiceConnection;->this$0:Lcom/car/common/VoiceRecognizerImpl;

    iget-object v1, v1, Lcom/car/common/VoiceRecognizerImpl;->mService:Lcom/car/common/IVoiceRecognizer;

    iget-object v2, p0, Lcom/car/common/VoiceRecognizerImpl$MyServiceConnection;->this$0:Lcom/car/common/VoiceRecognizerImpl;

    iget-object v2, v2, Lcom/car/common/VoiceRecognizerImpl;->mInterfaceCallback:Lcom/car/common/VoiceRecognizerImpl$MyIVoiceRecognizeCallback;

    invoke-interface {v1, v2}, Lcom/car/common/IVoiceRecognizer;->setCallback(Lcom/car/common/IVoiceRecognizerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "CarSvc_VoiceRecognize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/common/VoiceRecognizerImpl$MyServiceConnection;->this$0:Lcom/car/common/VoiceRecognizerImpl;

    iget-object v1, v1, Lcom/car/common/VoiceRecognizerImpl;->mHandler:Lcom/car/common/VoiceRecognizerImpl$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/car/common/VoiceRecognizerImpl$MyHandler;->removeMessages(I)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_VoiceRecognize"

    const-string v2, "setCallback Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const-string v0, "CarSvc_VoiceRecognize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Servic disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/common/VoiceRecognizerImpl$MyServiceConnection;->this$0:Lcom/car/common/VoiceRecognizerImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/car/common/VoiceRecognizerImpl;->mService:Lcom/car/common/IVoiceRecognizer;

    iget-object v0, p0, Lcom/car/common/VoiceRecognizerImpl$MyServiceConnection;->this$0:Lcom/car/common/VoiceRecognizerImpl;

    iget-object v0, v0, Lcom/car/common/VoiceRecognizerImpl;->mHandler:Lcom/car/common/VoiceRecognizerImpl$MyHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/common/VoiceRecognizerImpl$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
