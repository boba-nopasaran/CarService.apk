.class Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$3;
.super Ljava/lang/Object;
.source "BleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->readMYMoreData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;


# direct methods
.method constructor <init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$3;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$3;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->readDeviceBatteryLevel()V

    return-void
.end method
