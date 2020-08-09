.class public Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveryServiceEvent;
.super Ljava/lang/Object;
.source "DiscoveryServiceEvent.java"


# instance fields
.field private mStatus:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveryServiceEvent;->setmStatus(I)V

    return-void
.end method


# virtual methods
.method public getmStatus()I
    .locals 1

    iget v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveryServiceEvent;->mStatus:I

    return v0
.end method

.method public setmStatus(I)V
    .locals 0

    iput p1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveryServiceEvent;->mStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiscoveryServiceEvent{mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveryServiceEvent;->getmStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
