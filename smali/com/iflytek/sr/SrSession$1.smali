.class Lcom/iflytek/sr/SrSession$1;
.super Ljava/lang/Object;
.source "SrSession.java"

# interfaces
.implements Lcom/iflytek/speech/sr/ISRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sr/SrSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/sr/SrSession;


# direct methods
.method constructor <init>(Lcom/iflytek/sr/SrSession;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sr/SrSession$1;->this$0:Lcom/iflytek/sr/SrSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSRMsgProc_(JJLjava/lang/String;)V
    .locals 7

    const-wide/16 v0, 0x2789    # 5.0004E-320

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sr/SrSession$1;->this$0:Lcom/iflytek/sr/SrSession;

    invoke-static {v0, p5}, Lcom/iflytek/sr/SrSession;->access$002(Lcom/iflytek/sr/SrSession;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/iflytek/sr/SrSession$1;->this$0:Lcom/iflytek/sr/SrSession;

    invoke-static {v0}, Lcom/iflytek/sr/SrSession;->access$100(Lcom/iflytek/sr/SrSession;)Lcom/iflytek/sr/IIsrListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/sr/SrSession$1;->this$0:Lcom/iflytek/sr/SrSession;

    invoke-static {v0}, Lcom/iflytek/sr/SrSession;->access$100(Lcom/iflytek/sr/SrSession;)Lcom/iflytek/sr/IIsrListener;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/iflytek/sr/IIsrListener;->onSrMsgProc(JJLjava/lang/String;)V

    :cond_1
    return-void
.end method
