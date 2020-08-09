.class Lcom/aispeech/aios/BusClient$TimerItem;
.super Ljava/lang/Object;
.source "BusClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/BusClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimerItem"
.end annotation


# instance fields
.field private id:J

.field private runnable:Ljava/lang/Runnable;

.field private timeout:J


# direct methods
.method public constructor <init>(JLjava/lang/Runnable;J)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/aispeech/aios/BusClient$TimerItem;->timeout:J

    iput-wide v0, p0, Lcom/aispeech/aios/BusClient$TimerItem;->id:J

    iput-wide p1, p0, Lcom/aispeech/aios/BusClient$TimerItem;->id:J

    iput-object p3, p0, Lcom/aispeech/aios/BusClient$TimerItem;->runnable:Ljava/lang/Runnable;

    iput-wide p4, p0, Lcom/aispeech/aios/BusClient$TimerItem;->timeout:J

    return-void
.end method

.method static synthetic access$1000(Lcom/aispeech/aios/BusClient$TimerItem;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/BusClient$TimerItem;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/aispeech/aios/BusClient$TimerItem;)J
    .locals 2

    iget-wide v0, p0, Lcom/aispeech/aios/BusClient$TimerItem;->id:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/aispeech/aios/BusClient$TimerItem;)J
    .locals 2

    iget-wide v0, p0, Lcom/aispeech/aios/BusClient$TimerItem;->timeout:J

    return-wide v0
.end method
