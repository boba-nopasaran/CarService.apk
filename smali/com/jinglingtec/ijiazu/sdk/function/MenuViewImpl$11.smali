.class Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$11;
.super Ljava/lang/Object;
.source "MenuViewImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->createView()V
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

    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$11;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$11;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->setRight()V

    return-void
.end method
