.class Lcom/aispeech/aios/client/AIOSMusicDataNode$1;
.super Lcom/aispeech/aios/BaseNode;
.source "AIOSMusicDataNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/client/AIOSMusicDataNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aispeech/aios/client/AIOSMusicDataNode;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/client/AIOSMusicDataNode;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/client/AIOSMusicDataNode$1;->this$0:Lcom/aispeech/aios/client/AIOSMusicDataNode;

    invoke-direct {p0}, Lcom/aispeech/aios/BaseNode;-><init>()V

    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    const/high16 v0, 0x100000

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "asset.songs"

    return-object v0
.end method

.method public varargs onCall(Ljava/lang/String;[[B)Lcom/aispeech/aios/BusClient$RPCResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onJoin()V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/aios/client/AIOSMusicDataNode$1;->bc:Lcom/aispeech/aios/BusClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "data.sync.state"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient;->subscribe([Ljava/lang/String;)V

    const-string v0, "AIOSMusicDataNode"

    const-string v1, "onJoin"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/aispeech/aios/BaseNode;->onJoin()V

    return-void
.end method

.method public varargs onMessage(Ljava/lang/String;[[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/aispeech/aios/BaseNode;->onMessage(Ljava/lang/String;[[B)V

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "data.sync.state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "songs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/aispeech/aios/client/AIOSMusicDataNode$1;->this$0:Lcom/aispeech/aios/client/AIOSMusicDataNode;

    invoke-static {v2}, Lcom/aispeech/aios/client/AIOSMusicDataNode;->access$000(Lcom/aispeech/aios/client/AIOSMusicDataNode;)Lcom/aispeech/aios/client/AIOSMusicDataNode$IMuiscSyncListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/aispeech/aios/client/AIOSMusicDataNode$1;->this$0:Lcom/aispeech/aios/client/AIOSMusicDataNode;

    invoke-static {v2}, Lcom/aispeech/aios/client/AIOSMusicDataNode;->access$000(Lcom/aispeech/aios/client/AIOSMusicDataNode;)Lcom/aispeech/aios/client/AIOSMusicDataNode$IMuiscSyncListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/aispeech/aios/client/AIOSMusicDataNode$IMuiscSyncListener;->syncSuccess()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/aispeech/aios/client/AIOSMusicDataNode$1;->this$0:Lcom/aispeech/aios/client/AIOSMusicDataNode;

    invoke-static {v2}, Lcom/aispeech/aios/client/AIOSMusicDataNode;->access$000(Lcom/aispeech/aios/client/AIOSMusicDataNode;)Lcom/aispeech/aios/client/AIOSMusicDataNode$IMuiscSyncListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/aispeech/aios/client/AIOSMusicDataNode$1;->this$0:Lcom/aispeech/aios/client/AIOSMusicDataNode;

    invoke-static {v2}, Lcom/aispeech/aios/client/AIOSMusicDataNode;->access$000(Lcom/aispeech/aios/client/AIOSMusicDataNode;)Lcom/aispeech/aios/client/AIOSMusicDataNode$IMuiscSyncListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/aispeech/aios/client/AIOSMusicDataNode$IMuiscSyncListener;->syncFailed()V

    goto :goto_0
.end method
