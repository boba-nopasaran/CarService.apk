.class Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager$CommandsRunnabe;
.super Ljava/lang/Object;
.source "AIOSCustomizeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandsRunnabe"
.end annotation


# instance fields
.field customizeCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/sdk/bean/Command;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;


# direct methods
.method public constructor <init>(Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/sdk/bean/Command;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager$CommandsRunnabe;->this$0:Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager$CommandsRunnabe;->customizeCommands:Ljava/util/List;

    return-void
.end method

.method private excuteRegCommands()Z
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/aispeech/aios/sdk/SDKNode;->getBusClient()Lcom/aispeech/aios/BusClient;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v9, p0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager$CommandsRunnabe;->customizeCommands:Ljava/util/List;

    if-eqz v9, :cond_2

    const-string v9, "/bus/nodes"

    invoke-virtual {v0, v9}, Lcom/aispeech/aios/BusClient;->call(Ljava/lang/String;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v9, v6, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    if-eqz v9, :cond_2

    iget-object v9, v6, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    array-length v9, v9

    if-eqz v9, :cond_2

    new-instance v3, Ljava/lang/String;

    iget-object v9, v6, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "customize"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v9, p0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager$CommandsRunnabe;->customizeCommands:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    iget-object v9, p0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager$CommandsRunnabe;->customizeCommands:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aispeech/aios/sdk/bean/Command;

    const-string v9, "/customize/sdk"

    invoke-virtual {v1, v9}, Lcom/aispeech/aios/sdk/bean/Command;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/aispeech/aios/sdk/utils/StringUtil;->joinJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/aispeech/aios/sdk/SDKNode;->getInstance()Lcom/aispeech/aios/sdk/SDKNode;

    move-result-object v9

    const-string v10, "sdk.customize.command.register"

    new-array v11, v7, [Ljava/lang/String;

    aput-object v5, v11, v8

    invoke-virtual {v9, v10, v11}, Lcom/aispeech/aios/sdk/SDKNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v8, "AIOSCustomizeManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Register command success : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager$CommandsRunnabe;->this$0:Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    invoke-static {v8}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->access$100(Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;)Lcom/aispeech/aios/sdk/listener/AIOSCustomizeListener;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v8, "AIOSCustomizeManager"

    const-string v9, "Register command success callback onCommandSuccess."

    invoke-static {v8, v9}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return v7

    :cond_2
    move v7, v8

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->access$000()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager$CommandsRunnabe;->excuteRegCommands()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->access$000()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
