.class Lcom/car/systemfunc/SystemEventHandler$4;
.super Ljava/lang/Object;
.source "SystemEventHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/SystemEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/SystemEventHandler;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/SystemEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/SystemEventHandler$4;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v1, "CarSvc_SystemEventHandler"

    const-string v2, "mHttpServiceConnection onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Lcom/car/httpserver/CarHttpService$LocalBinder;

    invoke-virtual {p2}, Lcom/car/httpserver/CarHttpService$LocalBinder;->getService()Lcom/car/httpserver/CarHttpService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/httpserver/CarHttpService;->startBroadcasting()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "CarSvc_SystemEventHandler"

    const-string v1, "mHttpServiceConnection onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
