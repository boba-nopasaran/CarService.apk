.class Lcom/car/voice/ui/VoiceDialog$6;
.super Ljava/lang/Object;
.source "VoiceDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/voice/ui/VoiceDialog;->setChooseList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private clearID:I

.field final synthetic this$0:Lcom/car/voice/ui/VoiceDialog;


# direct methods
.method constructor <init>(Lcom/car/voice/ui/VoiceDialog;)V
    .locals 1

    iput-object p1, p0, Lcom/car/voice/ui/VoiceDialog$6;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog$6;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v0}, Lcom/car/voice/ui/VoiceDialog;->access$300(Lcom/car/voice/ui/VoiceDialog;)I

    move-result v0

    iput v0, p0, Lcom/car/voice/ui/VoiceDialog$6;->clearID:I

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v2, "CarSvc_VoiceDialog"

    const-string v3, "onItemClick"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/car/voice/ui/VoiceDialog$6;->clearID:I

    iget-object v3, p0, Lcom/car/voice/ui/VoiceDialog$6;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v3}, Lcom/car/voice/ui/VoiceDialog;->access$300(Lcom/car/voice/ui/VoiceDialog;)I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/car/voice/ui/VoiceDialog$6;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v2}, Lcom/car/voice/ui/VoiceDialog;->access$400(Lcom/car/voice/ui/VoiceDialog;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/car/voice/ui/VoiceDialog$6;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v2}, Lcom/car/voice/ui/VoiceDialog;->access$000(Lcom/car/voice/ui/VoiceDialog;)Lcom/car/voice/VoiceUICallback;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/car/voice/VoiceUICallback;->onVoiceUIResult(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, ""

    packed-switch p3, :pswitch_data_0

    add-int/lit8 v2, p3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/car/voice/ui/VoiceDialog$6;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v2}, Lcom/car/voice/ui/VoiceDialog;->access$000(Lcom/car/voice/ui/VoiceDialog;)Lcom/car/voice/VoiceUICallback;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/voice/ui/VoiceDialog$6;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v2}, Lcom/car/voice/ui/VoiceDialog;->access$000(Lcom/car/voice/ui/VoiceDialog;)Lcom/car/voice/VoiceUICallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/car/voice/VoiceUICallback;->onVoiceUIResult(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "\u7b2c\u4e00"

    goto :goto_1

    :pswitch_1
    const-string v0, "\u7b2c\u4e8c"

    goto :goto_1

    :pswitch_2
    const-string v0, "\u7b2c\u4e09"

    goto :goto_1

    :pswitch_3
    const-string v0, "\u7b2c\u56db"

    goto :goto_1

    :pswitch_4
    const-string v0, "\u7b2c\u4e94"

    goto :goto_1

    :pswitch_5
    const-string v0, "\u7b2c\u516d"

    goto :goto_1

    :pswitch_6
    const-string v0, "\u7b2c\u4e03"

    goto :goto_1

    :pswitch_7
    const-string v0, "\u7b2c\u516b"

    goto :goto_1

    :pswitch_8
    const-string v0, "\u7b2c\u4e5d"

    goto :goto_1

    :pswitch_9
    const-string v0, "\u7b2c\u5341"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
