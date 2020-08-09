.class Lcom/aispeech/aios/common/utils/AnrTestUtil$1;
.super Landroid/content/BroadcastReceiver;
.source "AnrTestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/common/utils/AnrTestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aispeech/aios/common/utils/AnrTestUtil;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/common/utils/AnrTestUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/common/utils/AnrTestUtil$1;->this$0:Lcom/aispeech/aios/common/utils/AnrTestUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "AnrTestUtil"

    const-string v6, "action is empty!"

    invoke-static {v5, v6}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v5, "aios.intent.action.ANR_TEST"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "aios.intent.extra.TEXT"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/CharSequence;

    move-object v5, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/aispeech/aios/common/utils/AnrTestUtil$1;->this$0:Lcom/aispeech/aios/common/utils/AnrTestUtil;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/aispeech/aios/common/utils/AnrTestUtil;->setAnr(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v5, "AnrTestUtil"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v5, "AnrTestUtil"

    const-string v6, "text isEmpty!!!"

    invoke-static {v5, v6}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
