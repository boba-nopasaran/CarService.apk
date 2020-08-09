.class Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BluetoothStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;


# direct methods
.method private constructor <init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BluetoothStateReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BluetoothStateReceiver;-><init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BluetoothStateReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-static {v1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$700(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BluetoothStateReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$102(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;Z)Z

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BluetoothStateReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-static {v1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$800(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
