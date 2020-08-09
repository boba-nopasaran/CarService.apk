.class Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$2;
.super Ljava/lang/Object;
.source "MenuViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->dismiss()V
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

    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$2;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$2;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->access$500(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$2;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->access$502(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;Z)Z

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$2;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->access$200(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$2;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-static {v1}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->access$100(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
