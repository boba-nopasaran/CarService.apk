.class Lcom/car/systemfunc/IJiaZuSdk$2;
.super Landroid/os/Handler;
.source "IJiaZuSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/IJiaZuSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/IJiaZuSdk;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/IJiaZuSdk;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/IJiaZuSdk$2;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/car/systemfunc/IJiaZuSdk$2;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-boolean v0, v0, Lcom/car/systemfunc/IJiaZuSdk;->mNeedReport:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$2;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-object v2, v2, Lcom/car/systemfunc/IJiaZuSdk;->mBtName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u7ecf\u65ad\u5f00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/car/systemfunc/IJiaZuSdk$2;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/car/systemfunc/IJiaZuSdk;->mNeedReport:Z

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/IJiaZuSdk$2;->removeMessages(I)V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$2;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-object v2, v2, Lcom/car/systemfunc/IJiaZuSdk;->mBtName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u7ecf\u65ad\u5f00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/car/systemfunc/IJiaZuSdk$2;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-boolean v0, v0, Lcom/car/systemfunc/IJiaZuSdk;->mEnabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->releaseThread()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
