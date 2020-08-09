.class Lcom/kaolafm/sdk/client/KLClientAPI$22$1;
.super Lcom/kaolafm/sdk/client/AudioFocusChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaolafm/sdk/client/KLClientAPI$22;->onConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kaolafm/sdk/client/KLClientAPI$22;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/KLClientAPI$22;)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$22$1;->this$1:Lcom/kaolafm/sdk/client/KLClientAPI$22;

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/AudioFocusChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "kaolafm.clientsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":KLClientAPI: registerAudioFocusChangeListener onAudioFocusChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$22$1;->this$1:Lcom/kaolafm/sdk/client/KLClientAPI$22;

    iget-object v0, v0, Lcom/kaolafm/sdk/client/KLClientAPI$22;->val$listener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-interface {v0, p1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    return-void
.end method
