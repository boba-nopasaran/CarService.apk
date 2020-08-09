.class Lcom/car/common/VoiceRecognizerImpl;
.super Lcom/car/common/VoiceRecognizer;
.source "VoiceRecognizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/common/VoiceRecognizerImpl$1;,
        Lcom/car/common/VoiceRecognizerImpl$MyHandler;,
        Lcom/car/common/VoiceRecognizerImpl$MyIVoiceRecognizeCallback;,
        Lcom/car/common/VoiceRecognizerImpl$MyServiceConnection;
    }
.end annotation


# static fields
.field private static final MSG_BIND_SERVICE:I = 0x1

.field private static final MSG_ONRECOGNIZE_RESULT:I = 0x2

.field static final TAG:Ljava/lang/String; = "CarSvc_VoiceRecognize"


# instance fields
.field mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/car/common/VoiceRecognizerCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mConnection:Lcom/car/common/VoiceRecognizerImpl$MyServiceConnection;

.field mContext:Landroid/content/Context;

.field final mHandler:Lcom/car/common/VoiceRecognizerImpl$MyHandler;

.field final mInterfaceCallback:Lcom/car/common/VoiceRecognizerImpl$MyIVoiceRecognizeCallback;

.field mService:Lcom/car/common/IVoiceRecognizer;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/car/common/VoiceRecognizer;-><init>()V

    new-instance v0, Lcom/car/common/VoiceRecognizerImpl$MyServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/car/common/VoiceRecognizerImpl$MyServiceConnection;-><init>(Lcom/car/common/VoiceRecognizerImpl;Lcom/car/common/VoiceRecognizerImpl$1;)V

    iput-object v0, p0, Lcom/car/common/VoiceRecognizerImpl;->mConnection:Lcom/car/common/VoiceRecognizerImpl$MyServiceConnection;

    new-instance v0, Lcom/car/common/VoiceRecognizerImpl$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/car/common/VoiceRecognizerImpl$MyHandler;-><init>(Lcom/car/common/VoiceRecognizerImpl;Lcom/car/common/VoiceRecognizerImpl$1;)V

    iput-object v0, p0, Lcom/car/common/VoiceRecognizerImpl;->mHandler:Lcom/car/common/VoiceRecognizerImpl$MyHandler;

    new-instance v0, Lcom/car/common/VoiceRecognizerImpl$MyIVoiceRecognizeCallback;

    invoke-direct {v0, p0, v1}, Lcom/car/common/VoiceRecognizerImpl$MyIVoiceRecognizeCallback;-><init>(Lcom/car/common/VoiceRecognizerImpl;Lcom/car/common/VoiceRecognizerImpl$1;)V

    iput-object v0, p0, Lcom/car/common/VoiceRecognizerImpl;->mInterfaceCallback:Lcom/car/common/VoiceRecognizerImpl$MyIVoiceRecognizeCallback;

    iput-object p1, p0, Lcom/car/common/VoiceRecognizerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/car/common/VoiceRecognizerImpl;->bindService()V

    return-void
.end method

.method static synthetic access$300(Lcom/car/common/VoiceRecognizerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/common/VoiceRecognizerImpl;->bindService()V

    return-void
.end method

.method private final bindService()V
    .locals 8

    const-wide/16 v6, 0x1f4

    const/4 v4, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/car/common/IVoiceRecognizer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.car.carservice"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/common/VoiceRecognizerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/car/common/VoiceRecognizerImpl;->mConnection:Lcom/car/common/VoiceRecognizerImpl$MyServiceConnection;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "CarSvc_VoiceRecognize"

    const-string v3, "Bind IVoiceRecognizer failed, try later"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/common/VoiceRecognizerImpl;->mHandler:Lcom/car/common/VoiceRecognizerImpl$MyHandler;

    invoke-virtual {v2, v4, v6, v7}, Lcom/car/common/VoiceRecognizerImpl$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    const-string v2, "CarSvc_VoiceRecognize"

    const-string v3, "Bind IVoiceRecognizer OK, wait connection..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/common/VoiceRecognizerImpl;->mHandler:Lcom/car/common/VoiceRecognizerImpl$MyHandler;

    invoke-virtual {v2, v4, v6, v7}, Lcom/car/common/VoiceRecognizerImpl$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public playTTS(Ljava/lang/String;IZ)V
    .locals 3

    iget-object v1, p0, Lcom/car/common/VoiceRecognizerImpl;->mService:Lcom/car/common/IVoiceRecognizer;

    if-nez v1, :cond_0

    const-string v1, "CarSvc_VoiceRecognize"

    const-string v2, "releaseRecognize null service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/car/common/VoiceRecognizerImpl;->mService:Lcom/car/common/IVoiceRecognizer;

    invoke-interface {v1, p1, p2, p3}, Lcom/car/common/IVoiceRecognizer;->playTTS(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_VoiceRecognize"

    const-string v2, "releaseRecognize Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public releaseRecognizer(I)V
    .locals 4

    iget-object v1, p0, Lcom/car/common/VoiceRecognizerImpl;->mService:Lcom/car/common/IVoiceRecognizer;

    if-nez v1, :cond_0

    const-string v1, "CarSvc_VoiceRecognize"

    const-string v2, "releaseRecognize null service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/car/common/VoiceRecognizerImpl;->mService:Lcom/car/common/IVoiceRecognizer;

    invoke-interface {v1, p1}, Lcom/car/common/IVoiceRecognizer;->releaseRecognizer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v1, "CarSvc_VoiceRecognize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseRecognizer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_VoiceRecognize"

    const-string v2, "releaseRecognize Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public requestRecognizer(ILjava/lang/String;)I
    .locals 5

    iget-object v2, p0, Lcom/car/common/VoiceRecognizerImpl;->mService:Lcom/car/common/IVoiceRecognizer;

    if-nez v2, :cond_0

    const-string v2, "CarSvc_VoiceRecognize"

    const-string v3, "requestRecognize null service, request later"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/car/common/VoiceRecognizerImpl;->mService:Lcom/car/common/IVoiceRecognizer;

    invoke-interface {v2, p1, p2}, Lcom/car/common/IVoiceRecognizer;->requestRecognizer(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    const-string v2, "CarSvc_VoiceRecognize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestRecognizer type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",param="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_VoiceRecognize"

    const-string v3, "requestRecognize Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCallback(Lcom/car/common/VoiceRecognizerCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/car/common/VoiceRecognizerImpl;->mCallback:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/common/VoiceRecognizerImpl;->mCallback:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method
