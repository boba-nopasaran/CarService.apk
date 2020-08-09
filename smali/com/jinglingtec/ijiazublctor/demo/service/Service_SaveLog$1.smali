.class Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog$1;
.super Lcom/jinglingtec/ijiazublctor/demo/service/SaveLog$Stub;
.source "Service_SaveLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;


# direct methods
.method constructor <init>(Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog$1;->this$0:Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/demo/service/SaveLog$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public StopSaveLog()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Service_SaveLog"

    const-string v1, "StopSaveLog"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/demo/service/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog$1;->this$0:Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;->access$002(Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;Z)Z

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog$1;->this$0:Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;->stopSelf()V

    return-void
.end method

.method public startSaveLog()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Service_SaveLog"

    const-string v1, "startSaveLog"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/demo/service/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog$1;->this$0:Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;->access$002(Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;Z)Z

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog$1;->this$0:Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;->access$100(Lcom/jinglingtec/ijiazublctor/demo/service/Service_SaveLog;)V

    return-void
.end method
