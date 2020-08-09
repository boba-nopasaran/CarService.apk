.class Lcom/car/systemfunc/BeidouAgpsManager$1$1;
.super Ljava/lang/Object;
.source "BeidouAgpsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/BeidouAgpsManager$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/systemfunc/BeidouAgpsManager$1;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/BeidouAgpsManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/BeidouAgpsManager$1$1;->this$1:Lcom/car/systemfunc/BeidouAgpsManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/BeidouAgpsManager$1$1;->this$1:Lcom/car/systemfunc/BeidouAgpsManager$1;

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager$1;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    invoke-virtual {v0}, Lcom/car/systemfunc/BeidouAgpsManager;->usingCacheData()V

    return-void
.end method
