.class Lcom/car/voice/ui/VoiceDialog$9;
.super Landroid/os/Handler;
.source "VoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/voice/ui/VoiceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/voice/ui/VoiceDialog;


# direct methods
.method constructor <init>(Lcom/car/voice/ui/VoiceDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/ui/VoiceDialog$9;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
