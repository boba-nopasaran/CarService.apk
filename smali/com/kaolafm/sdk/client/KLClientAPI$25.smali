.class Lcom/kaolafm/sdk/client/KLClientAPI$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaolafm/sdk/client/KLClientAPI;->execute(Ljava/lang/String;Lcom/kaolafm/sdk/client/ExecuteResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$er:Lcom/kaolafm/sdk/client/ExecuteResult;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/KLClientAPI;Ljava/lang/String;Lcom/kaolafm/sdk/client/ExecuteResult;)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$25;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$25;->val$command:Ljava/lang/String;

    iput-object p3, p0, Lcom/kaolafm/sdk/client/KLClientAPI$25;->val$er:Lcom/kaolafm/sdk/client/ExecuteResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$25;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$000(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$25;->val$command:Ljava/lang/String;

    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$25;->val$er:Lcom/kaolafm/sdk/client/ExecuteResult;

    invoke-interface {v0, v1, v2}, Lcom/kaolafm/sdk/client/IClientAPI;->executeWithCallback(Ljava/lang/String;Lcom/kaolafm/sdk/client/IExecuteResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
