.class Lcom/car/common/LocationManager$NmeaListenClass;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/common/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NmeaListenClass"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/common/LocationManager;


# direct methods
.method private constructor <init>(Lcom/car/common/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/car/common/LocationManager$NmeaListenClass;->this$0:Lcom/car/common/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/common/LocationManager;Lcom/car/common/LocationManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/common/LocationManager$NmeaListenClass;-><init>(Lcom/car/common/LocationManager;)V

    return-void
.end method


# virtual methods
.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/car/common/LocationManager$NmeaListenClass;->this$0:Lcom/car/common/LocationManager;

    iput-object p3, v2, Lcom/car/common/LocationManager;->mLastNmea:Ljava/lang/String;

    iget-object v2, p0, Lcom/car/common/LocationManager$NmeaListenClass;->this$0:Lcom/car/common/LocationManager;

    iput-wide p1, v2, Lcom/car/common/LocationManager;->mLastTimeStamp:J

    iget-object v2, p0, Lcom/car/common/LocationManager$NmeaListenClass;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v2}, Lcom/car/common/LocationManager;->access$200(Lcom/car/common/LocationManager;)Lcom/car/common/LocationManager$Listener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/common/LocationManager$NmeaListenClass;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v2}, Lcom/car/common/LocationManager;->access$200(Lcom/car/common/LocationManager;)Lcom/car/common/LocationManager$Listener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/car/common/LocationManager$Listener;->onNmeaReceived(JLjava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/car/common/LocationManager$NmeaListenClass;->this$0:Lcom/car/common/LocationManager;

    iget-object v2, v2, Lcom/car/common/LocationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/common/LocationManager$Listener;

    invoke-interface {v1, p1, p2, p3}, Lcom/car/common/LocationManager$Listener;->onNmeaReceived(JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
