.class Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$1;
.super Ljava/lang/Object;
.source "MenuViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->showMenuView()V
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

    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-static {v1}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->access$000(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-static {v1}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->access$200(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-static {v2}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->access$100(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-static {v1}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->access$300(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->access$400(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;Z)V

    return-void
.end method
