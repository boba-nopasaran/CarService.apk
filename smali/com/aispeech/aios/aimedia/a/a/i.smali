.class Lcom/aispeech/aios/aimedia/a/a/i;
.super Lcom/kaolafm/sdk/client/ah;


# instance fields
.field final synthetic a:Lcom/aispeech/aios/aimedia/a/a/e;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/i;->a:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AIOS-AIMedia-KLFMProxy"

    const-string v1, "\u6210\u529f\u64ad\u653e"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/kaolafm/sdk/client/ErrorInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AIOS-AIMedia-KLFMProxy"

    const-string v1, "\u64ad\u653e\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
