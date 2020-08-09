.class public Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;
.super Lcom/squareup/otto/Bus;
.source "BleEventBus.java"


# static fields
.field private static ourInstance:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    sget-object v1, Lcom/squareup/otto/ThreadEnforcer;->ANY:Lcom/squareup/otto/ThreadEnforcer;

    invoke-direct {v0, v1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;-><init>(Lcom/squareup/otto/ThreadEnforcer;)V

    sput-object v0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;->ourInstance:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/otto/ThreadEnforcer;)V
    .locals 1

    const-string v0, "Indy-Ble-LowLevel"

    invoke-direct {p0, p1, v0}, Lcom/squareup/otto/Bus;-><init>(Lcom/squareup/otto/ThreadEnforcer;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;
    .locals 1

    sget-object v0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;->ourInstance:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    return-object v0
.end method
