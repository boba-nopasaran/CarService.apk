.class Lcom/iflytek/speech/sr/SRSolution$sendCreateMsgThread;
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
    name = "sendCreateMsgThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/speech/sr/SRSolution;


# direct methods
.method private constructor <init>(Lcom/iflytek/speech/sr/SRSolution;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/speech/sr/SRSolution$sendCreateMsgThread;->this$0:Lcom/iflytek/speech/sr/SRSolution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/speech/sr/SRSolution;Lcom/iflytek/speech/sr/SRSolution$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/speech/sr/SRSolution$sendCreateMsgThread;-><init>(Lcom/iflytek/speech/sr/SRSolution;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v1, p0, Lcom/iflytek/speech/sr/SRSolution$sendCreateMsgThread;->this$0:Lcom/iflytek/speech/sr/SRSolution;

    const-wide/16 v2, 0x2789    # 5.0004E-320

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/iflytek/speech/sr/SRSolution$sendCreateMsgThread;->this$0:Lcom/iflytek/speech/sr/SRSolution;

    invoke-static {v0}, Lcom/iflytek/speech/sr/SRSolution;->access$200(Lcom/iflytek/speech/sr/SRSolution;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/iflytek/speech/sr/SRSolution;->OnSRMsgProc(JJLjava/lang/String;)V

    return-void
.end method
