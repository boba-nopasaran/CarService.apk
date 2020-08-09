.class public Lcom/aispeech/common/AITimer;
.super Ljava/util/Timer;
.source "SourceFile"


# static fields
.field private static a:Lcom/aispeech/common/AITimer;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TimerTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aispeech/common/AITimer;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    return-void
.end method

.method public static getInstance()Ljava/util/Timer;
    .locals 1

    sget-object v0, Lcom/aispeech/common/AITimer;->a:Lcom/aispeech/common/AITimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/common/AITimer;

    invoke-direct {v0}, Lcom/aispeech/common/AITimer;-><init>()V

    sput-object v0, Lcom/aispeech/common/AITimer;->a:Lcom/aispeech/common/AITimer;

    :cond_0
    sget-object v0, Lcom/aispeech/common/AITimer;->a:Lcom/aispeech/common/AITimer;

    return-object v0
.end method


# virtual methods
.method public cancelTimer(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/aispeech/common/AITimer;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    sget-object v0, Lcom/aispeech/common/AITimer;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public startTimer(Ljava/util/TimerTask;Ljava/lang/String;I)V
    .locals 4

    sget-object v0, Lcom/aispeech/common/AITimer;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    sget-object v0, Lcom/aispeech/common/AITimer;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/aispeech/common/AITimer;->b:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    sget-object v0, Lcom/aispeech/common/AITimer;->a:Lcom/aispeech/common/AITimer;

    int-to-long v2, p3

    invoke-virtual {v0, p1, v2, v3}, Lcom/aispeech/common/AITimer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
