.class Lcom/kaolafm/sdk/client/KLClientAPI$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaolafm/sdk/client/KLClientAPI;->playPre(Lcom/kaolafm/sdk/client/PlayResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

.field final synthetic val$playResult:Lcom/kaolafm/sdk/client/PlayResult;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/PlayResult;)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$6;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$6;->val$playResult:Lcom/kaolafm/sdk/client/PlayResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$6;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$000(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;

    move-result-object v0

    invoke-interface {v0}, Lcom/kaolafm/sdk/client/IClientAPI;->playPre()V

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$6;->val$playResult:Lcom/kaolafm/sdk/client/PlayResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$6;->val$playResult:Lcom/kaolafm/sdk/client/PlayResult;

    invoke-virtual {v0}, Lcom/kaolafm/sdk/client/PlayResult;->onSuccuss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
