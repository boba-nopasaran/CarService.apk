.class Lcom/kaolafm/sdk/client/KLClientAPI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaolafm/sdk/client/KLClientAPI;->init(Landroid/content/Context;Ljava/lang/String;Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

.field final synthetic val$weakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/KLClientAPI;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$2;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$2;->val$weakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "kaolafm.clientsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":KLClientAPI: onServiceConnected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$2;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {p2}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/IClientAPI;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$002(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/IClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;

    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$2;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$200(Lcom/kaolafm/sdk/client/KLClientAPI;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const-string v0, "kaolafm.clientsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":KLClientAPI: linkToDeath."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$2;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$300(Lcom/kaolafm/sdk/client/KLClientAPI;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$2;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$000(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$2;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v1}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$400(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/PlayStateListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kaolafm/sdk/client/IClientAPI;->setPlayListener(Lcom/kaolafm/sdk/client/PlayListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$2;->val$weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;->onConnected()V

    :cond_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$2;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$500(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$2;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$500(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IServiceConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kaolafm/sdk/client/IServiceConnection;->onServiceConnected(Landroid/content/ComponentName;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$2;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$000(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$2;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v1}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$400(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/PlayStateListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kaolafm/sdk/client/IClientAPI;->removePlayListener(Lcom/kaolafm/sdk/client/PlayListener;)V

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$2;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$402(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/PlayStateListener;)Lcom/kaolafm/sdk/client/PlayStateListener;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$2;->val$weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const-string v0, "kaolafm.clientsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":KLClientAPI: onServiceDisconnected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$2;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$500(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$2;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$500(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IServiceConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kaolafm/sdk/client/IServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method
