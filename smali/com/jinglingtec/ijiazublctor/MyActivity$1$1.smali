.class Lcom/jinglingtec/ijiazublctor/MyActivity$1$1;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jinglingtec/ijiazublctor/MyActivity$1;->deviceConnectionChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jinglingtec/ijiazublctor/MyActivity$1;

.field final synthetic val$isConnected:Z


# direct methods
.method constructor <init>(Lcom/jinglingtec/ijiazublctor/MyActivity$1;Z)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/MyActivity$1$1;->this$1:Lcom/jinglingtec/ijiazublctor/MyActivity$1;

    iput-boolean p2, p0, Lcom/jinglingtec/ijiazublctor/MyActivity$1$1;->val$isConnected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-boolean v2, p0, Lcom/jinglingtec/ijiazublctor/MyActivity$1$1;->val$isConnected:Z

    if-eqz v2, :cond_0

    const-string v0, "Bluethoth device connected"

    :goto_0
    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/MyActivity$1$1;->this$1:Lcom/jinglingtec/ijiazublctor/MyActivity$1;

    iget-object v2, v2, Lcom/jinglingtec/ijiazublctor/MyActivity$1;->this$0:Lcom/jinglingtec/ijiazublctor/MyActivity;

    const/high16 v3, 0x7f060000

    invoke-virtual {v2, v3}, Lcom/jinglingtec/ijiazublctor/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "Bluethoth device dis-connected"

    goto :goto_0
.end method
