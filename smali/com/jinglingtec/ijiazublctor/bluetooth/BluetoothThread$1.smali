.class Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$1;
.super Landroid/os/Handler;
.source "BluetoothThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->initThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;


# direct methods
.method constructor <init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$1;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$1;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-static {v0, p1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$000(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;Landroid/os/Message;)V

    return-void
.end method
