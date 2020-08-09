.class Lcom/car/systemfunc/TimerDialog$2;
.super Ljava/lang/Object;
.source "TimerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/TimerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/TimerDialog;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/TimerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/TimerDialog$2;->this$0:Lcom/car/systemfunc/TimerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/car/systemfunc/TimerDialog$2;->this$0:Lcom/car/systemfunc/TimerDialog;

    invoke-static {v0}, Lcom/car/systemfunc/TimerDialog;->access$600(Lcom/car/systemfunc/TimerDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/TimerDialog$2;->this$0:Lcom/car/systemfunc/TimerDialog;

    invoke-static {v0}, Lcom/car/systemfunc/TimerDialog;->access$600(Lcom/car/systemfunc/TimerDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/car/systemfunc/TimerDialog$2;->this$0:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v0}, Lcom/car/systemfunc/TimerDialog;->dismiss()V

    return-void
.end method
