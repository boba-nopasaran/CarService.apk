.class Lcom/tencent/wecarspeech/sdk/TASMediaManager$NotifyMediaPlayInfoThread;
.super Ljava/lang/Thread;
.source "TASMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotifyMediaPlayInfoThread"
.end annotation


# instance fields
.field mPackageName:Ljava/lang/String;

.field mPlayinfo:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/TASMediaManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$NotifyMediaPlayInfoThread;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$NotifyMediaPlayInfoThread;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$NotifyMediaPlayInfoThread;->mPlayinfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$NotifyMediaPlayInfoThread;->this$0:Lcom/tencent/wecarspeech/sdk/TASMediaManager;

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$NotifyMediaPlayInfoThread;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASMediaManager$NotifyMediaPlayInfoThread;->mPlayinfo:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASMediaManager;->access$700(Lcom/tencent/wecarspeech/sdk/TASMediaManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
