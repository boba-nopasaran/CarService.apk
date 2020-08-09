.class Lcom/aispeech/aios/BusClient$7;
.super Ljava/lang/Object;
.source "BusClient.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/BusClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/aispeech/aios/BusClient$TimerItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aispeech/aios/BusClient;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/BusClient;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/BusClient$7;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/aispeech/aios/BusClient$TimerItem;Lcom/aispeech/aios/BusClient$TimerItem;)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {p1}, Lcom/aispeech/aios/BusClient$TimerItem;->access$900(Lcom/aispeech/aios/BusClient$TimerItem;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/aispeech/aios/BusClient$TimerItem;->access$900(Lcom/aispeech/aios/BusClient$TimerItem;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/aispeech/aios/BusClient$TimerItem;->access$900(Lcom/aispeech/aios/BusClient$TimerItem;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/aispeech/aios/BusClient$TimerItem;->access$900(Lcom/aispeech/aios/BusClient$TimerItem;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    invoke-static {p1}, Lcom/aispeech/aios/BusClient$TimerItem;->access$1500(Lcom/aispeech/aios/BusClient$TimerItem;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/aispeech/aios/BusClient$TimerItem;->access$1500(Lcom/aispeech/aios/BusClient$TimerItem;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    invoke-static {p1}, Lcom/aispeech/aios/BusClient$TimerItem;->access$1500(Lcom/aispeech/aios/BusClient$TimerItem;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/aispeech/aios/BusClient$TimerItem;->access$1500(Lcom/aispeech/aios/BusClient$TimerItem;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/aispeech/aios/BusClient$TimerItem;

    check-cast p2, Lcom/aispeech/aios/BusClient$TimerItem;

    invoke-virtual {p0, p1, p2}, Lcom/aispeech/aios/BusClient$7;->compare(Lcom/aispeech/aios/BusClient$TimerItem;Lcom/aispeech/aios/BusClient$TimerItem;)I

    move-result v0

    return v0
.end method
