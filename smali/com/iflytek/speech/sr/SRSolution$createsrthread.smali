.class Lcom/iflytek/speech/sr/SRSolution$createsrthread;
.super Ljava/lang/Object;
.source "SRSolution.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/sr/SRSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "createsrthread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/speech/sr/SRSolution;


# direct methods
.method private constructor <init>(Lcom/iflytek/speech/sr/SRSolution;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/speech/sr/SRSolution$createsrthread;->this$0:Lcom/iflytek/speech/sr/SRSolution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/speech/sr/SRSolution;Lcom/iflytek/speech/sr/SRSolution$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/speech/sr/SRSolution$createsrthread;-><init>(Lcom/iflytek/speech/sr/SRSolution;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/iflytek/speech/sr/SRSolution;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/speech/libisssr;->setMachineCode(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SRSolution"

    const-string v2, "setMachineCode failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/iflytek/speech/sr/SRSolution$createsrthread;->this$0:Lcom/iflytek/speech/sr/SRSolution;

    invoke-static {v1}, Lcom/iflytek/speech/sr/SRSolution;->access$400(Lcom/iflytek/speech/sr/SRSolution;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/speech/sr/SRSolution$createsrthread;->this$0:Lcom/iflytek/speech/sr/SRSolution;

    invoke-static {v2}, Lcom/iflytek/speech/sr/SRSolution;->access$500(Lcom/iflytek/speech/sr/SRSolution;)Lcom/iflytek/speech/sr/ISRListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/speech/libisssr;->create(Ljava/lang/String;Lcom/iflytek/speech/sr/ISRListener;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "SRSolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create sr failed, Error ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/speech/sr/SRSolution$createsrthread;->this$0:Lcom/iflytek/speech/sr/SRSolution;

    const-wide/16 v2, 0x2776

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/iflytek/speech/sr/SRSolution;->OnSRMsgProc(JJLjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v1, "SRSolution"

    const-string v2, "create success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/speech/sr/SRSolution$createsrthread;->this$0:Lcom/iflytek/speech/sr/SRSolution;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/iflytek/speech/sr/SRSolution;->access$602(Lcom/iflytek/speech/sr/SRSolution;Z)Z

    goto :goto_0
.end method
