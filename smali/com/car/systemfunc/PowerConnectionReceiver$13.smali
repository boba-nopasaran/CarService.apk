.class Lcom/car/systemfunc/PowerConnectionReceiver$13;
.super Ljava/lang/Object;
.source "PowerConnectionReceiver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/PowerConnectionReceiver;->initSleepDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/PowerConnectionReceiver;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/PowerConnectionReceiver$13;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$402(Z)Z

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver$13;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v0}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$1100(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    return-void
.end method
