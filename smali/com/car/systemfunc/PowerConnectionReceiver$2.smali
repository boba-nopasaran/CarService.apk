.class Lcom/car/systemfunc/PowerConnectionReceiver$2;
.super Ljava/lang/Object;
.source "PowerConnectionReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/PowerConnectionReceiver;
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

    iput-object p1, p0, Lcom/car/systemfunc/PowerConnectionReceiver$2;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver$2;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v0}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$000(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    return-void
.end method
