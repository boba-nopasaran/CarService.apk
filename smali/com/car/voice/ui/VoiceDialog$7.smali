.class Lcom/car/voice/ui/VoiceDialog$7;
.super Ljava/lang/Object;
.source "VoiceDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/voice/ui/VoiceDialog;->addView(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/voice/ui/VoiceDialog;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/car/voice/ui/VoiceDialog;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/ui/VoiceDialog$7;->this$0:Lcom/car/voice/ui/VoiceDialog;

    iput-object p2, p0, Lcom/car/voice/ui/VoiceDialog$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/car/voice/ui/VoiceDialog$7;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/car/voice/ui/VoiceDialog$7;->this$0:Lcom/car/voice/ui/VoiceDialog;

    iget-object v3, p0, Lcom/car/voice/ui/VoiceDialog$7;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v3}, Lcom/car/voice/ui/VoiceDialog;->access$200(Lcom/car/voice/ui/VoiceDialog;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/car/voice/ui/VoiceDialog;->access$202(Lcom/car/voice/ui/VoiceDialog;I)I

    iget-object v2, p0, Lcom/car/voice/ui/VoiceDialog$7;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v2}, Lcom/car/voice/ui/VoiceDialog;->access$200(Lcom/car/voice/ui/VoiceDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/car/voice/ui/VoiceDialog$7;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v3}, Lcom/car/voice/ui/VoiceDialog;->access$500(Lcom/car/voice/ui/VoiceDialog;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/car/voice/ui/VoiceDialog$7;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v2}, Lcom/car/voice/ui/VoiceDialog;->access$600(Lcom/car/voice/ui/VoiceDialog;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/voice/ui/VoiceDialog$7;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v2}, Lcom/car/voice/ui/VoiceDialog;->access$100(Lcom/car/voice/ui/VoiceDialog;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/car/voice/ui/VoiceDialog$7;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v3}, Lcom/car/voice/ui/VoiceDialog;->access$700(Lcom/car/voice/ui/VoiceDialog;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/car/voice/ui/VoiceDialog$7;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v3}, Lcom/car/voice/ui/VoiceDialog;->access$500(Lcom/car/voice/ui/VoiceDialog;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/car/voice/ui/VoiceDialog$7;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v4}, Lcom/car/voice/ui/VoiceDialog;->access$200(Lcom/car/voice/ui/VoiceDialog;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/car/voice/ui/VoiceDialog$7;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v2}, Lcom/car/voice/ui/VoiceDialog;->access$100(Lcom/car/voice/ui/VoiceDialog;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/car/voice/ui/VoiceDialog$7;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v3}, Lcom/car/voice/ui/VoiceDialog;->access$700(Lcom/car/voice/ui/VoiceDialog;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v2, p0, Lcom/car/voice/ui/VoiceDialog$7;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v2}, Lcom/car/voice/ui/VoiceDialog;->access$800(Lcom/car/voice/ui/VoiceDialog;)V

    return-void
.end method
