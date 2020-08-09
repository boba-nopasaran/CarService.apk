.class Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5;
.super Ljava/lang/Object;
.source "MenuViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->onRightKeyClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;


# direct methods
.method constructor <init>(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->access$800(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->access$800(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->access$800(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->access$900(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5$1;

    invoke-direct {v1, p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5$1;-><init>(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
