.class Lcom/car/systemfunc/DataCardManager$2;
.super Ljava/lang/Object;
.source "DataCardManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/DataCardManager;->initDataCardDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/DataCardManager;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/DataCardManager;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/DataCardManager$2;->this$0:Lcom/car/systemfunc/DataCardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/DataCardManager$2;->this$0:Lcom/car/systemfunc/DataCardManager;

    invoke-static {v0}, Lcom/car/systemfunc/DataCardManager;->access$900(Lcom/car/systemfunc/DataCardManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
