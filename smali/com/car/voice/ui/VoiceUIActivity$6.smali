.class Lcom/car/voice/ui/VoiceUIActivity$6;
.super Ljava/lang/Object;
.source "VoiceUIActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/voice/ui/VoiceUIActivity;->addView(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/voice/ui/VoiceUIActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/car/voice/ui/VoiceUIActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/ui/VoiceUIActivity$6;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    iput-object p2, p0, Lcom/car/voice/ui/VoiceUIActivity$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/car/voice/ui/VoiceUIActivity$6;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/car/voice/ui/VoiceUIActivity$6;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v2}, Lcom/car/voice/ui/VoiceUIActivity;->access$400(Lcom/car/voice/ui/VoiceUIActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/car/voice/ui/VoiceUIActivity$6;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v2}, Lcom/car/voice/ui/VoiceUIActivity;->access$400(Lcom/car/voice/ui/VoiceUIActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v2, p0, Lcom/car/voice/ui/VoiceUIActivity$6;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    iget-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity$6;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v3}, Lcom/car/voice/ui/VoiceUIActivity;->access$500(Lcom/car/voice/ui/VoiceUIActivity;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/car/voice/ui/VoiceUIActivity;->access$502(Lcom/car/voice/ui/VoiceUIActivity;I)I

    iget-object v2, p0, Lcom/car/voice/ui/VoiceUIActivity$6;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v2}, Lcom/car/voice/ui/VoiceUIActivity;->access$500(Lcom/car/voice/ui/VoiceUIActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity$6;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v3}, Lcom/car/voice/ui/VoiceUIActivity;->access$600(Lcom/car/voice/ui/VoiceUIActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/car/voice/ui/VoiceUIActivity$6;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v2}, Lcom/car/voice/ui/VoiceUIActivity;->access$700(Lcom/car/voice/ui/VoiceUIActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/voice/ui/VoiceUIActivity$6;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v2}, Lcom/car/voice/ui/VoiceUIActivity;->access$900(Lcom/car/voice/ui/VoiceUIActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity$6;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v3}, Lcom/car/voice/ui/VoiceUIActivity;->access$800(Lcom/car/voice/ui/VoiceUIActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity$6;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v3}, Lcom/car/voice/ui/VoiceUIActivity;->access$600(Lcom/car/voice/ui/VoiceUIActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/car/voice/ui/VoiceUIActivity$6;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v4}, Lcom/car/voice/ui/VoiceUIActivity;->access$500(Lcom/car/voice/ui/VoiceUIActivity;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/car/voice/ui/VoiceUIActivity$6;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v2}, Lcom/car/voice/ui/VoiceUIActivity;->access$900(Lcom/car/voice/ui/VoiceUIActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity$6;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v3}, Lcom/car/voice/ui/VoiceUIActivity;->access$800(Lcom/car/voice/ui/VoiceUIActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v2, p0, Lcom/car/voice/ui/VoiceUIActivity$6;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v2}, Lcom/car/voice/ui/VoiceUIActivity;->access$1000(Lcom/car/voice/ui/VoiceUIActivity;)V

    return-void
.end method
