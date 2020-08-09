.class Lcom/iflytek/mvw/MvwSession$1;
.super Ljava/lang/Object;
.source "MvwSession.java"

# interfaces
.implements Lcom/iflytek/speech/mvw/IMVWListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/mvw/MvwSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/mvw/MvwSession;


# direct methods
.method constructor <init>(Lcom/iflytek/mvw/MvwSession;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/mvw/MvwSession$1;->this$0:Lcom/iflytek/mvw/MvwSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMVWWakeup(IIILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/mvw/MvwSession$1;->this$0:Lcom/iflytek/mvw/MvwSession;

    invoke-static {v0}, Lcom/iflytek/mvw/MvwSession;->access$000(Lcom/iflytek/mvw/MvwSession;)Lcom/iflytek/mvw/IMvwListener;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MvwSession"

    const-string v1, "mvw listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/mvw/MvwSession$1;->this$0:Lcom/iflytek/mvw/MvwSession;

    invoke-static {v0}, Lcom/iflytek/mvw/MvwSession;->access$000(Lcom/iflytek/mvw/MvwSession;)Lcom/iflytek/mvw/IMvwListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iflytek/mvw/IMvwListener;->onVwWakeup(IIILjava/lang/String;)V

    goto :goto_0
.end method
