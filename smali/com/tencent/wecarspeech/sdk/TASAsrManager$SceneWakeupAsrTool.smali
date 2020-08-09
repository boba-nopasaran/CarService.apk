.class public Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;
.super Ljava/lang/Object;
.source "TASAsrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASAsrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SceneWakeupAsrTool"
.end annotation


# instance fields
.field private mISceneWakeupAsrListener:Lcom/tencent/wecarspeech/sdk/TASAsrManager$ISceneWakeupAsrListener;

.field private mSceneId:Ljava/lang/String;

.field private mWakeupKeywordsTagMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->mWakeupKeywordsTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->mWakeupKeywordsTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->mSceneId:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->mWakeupKeywordsTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method static synthetic access$900(Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->mSceneId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addWakeupKeywords(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "addWakeupKeywords params is invalid"

    invoke-static {v1, v2}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->mWakeupKeywordsTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getISceneWakeupAsrListener()Lcom/tencent/wecarspeech/sdk/TASAsrManager$ISceneWakeupAsrListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->mISceneWakeupAsrListener:Lcom/tencent/wecarspeech/sdk/TASAsrManager$ISceneWakeupAsrListener;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->mSceneId:Ljava/lang/String;

    return-object v0
.end method

.method public getWakeupKeywordsTagMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->mWakeupKeywordsTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public setISceneWakeupListener(Lcom/tencent/wecarspeech/sdk/TASAsrManager$ISceneWakeupAsrListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->mISceneWakeupAsrListener:Lcom/tencent/wecarspeech/sdk/TASAsrManager$ISceneWakeupAsrListener;

    return-void
.end method
