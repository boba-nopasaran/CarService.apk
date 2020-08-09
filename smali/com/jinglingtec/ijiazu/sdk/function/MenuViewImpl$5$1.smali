.class Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5$1;
.super Ljava/lang/Object;
.source "MenuViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5;


# direct methods
.method constructor <init>(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5$1;->this$1:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5$1;->this$1:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5;

    iget-object v0, v0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->access$800(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5$1;->this$1:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5;

    iget-object v0, v0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->access$800(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    return-void
.end method
