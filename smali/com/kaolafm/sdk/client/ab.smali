.class Lcom/kaolafm/sdk/client/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kaolafm/sdk/client/i$a;


# instance fields
.field final synthetic a:Lcom/kaolafm/sdk/client/ah;

.field final synthetic b:Lcom/kaolafm/sdk/client/i;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/ab;->b:Lcom/kaolafm/sdk/client/i;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/ab;->a:Lcom/kaolafm/sdk/client/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/ab;->b:Lcom/kaolafm/sdk/client/i;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/i;->d(Lcom/kaolafm/sdk/client/i;)Lcom/kaolafm/sdk/client/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/kaolafm/sdk/client/c;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaolafm/sdk/client/ab;->b:Lcom/kaolafm/sdk/client/i;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/i;->d(Lcom/kaolafm/sdk/client/i;)Lcom/kaolafm/sdk/client/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/kaolafm/sdk/client/c;->d()V

    iget-object v0, p0, Lcom/kaolafm/sdk/client/ab;->a:Lcom/kaolafm/sdk/client/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/ab;->a:Lcom/kaolafm/sdk/client/ah;

    invoke-virtual {v0}, Lcom/kaolafm/sdk/client/ah;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kaolafm/sdk/client/ab;->a:Lcom/kaolafm/sdk/client/ah;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/kaolafm/sdk/client/ErrorInfo;

    const/16 v1, 0x194

    invoke-direct {v0, v1}, Lcom/kaolafm/sdk/client/ErrorInfo;-><init>(I)V

    const-string v1, "no next"

    iput-object v1, v0, Lcom/kaolafm/sdk/client/ErrorInfo;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/ab;->a:Lcom/kaolafm/sdk/client/ah;

    invoke-virtual {v1, v0}, Lcom/kaolafm/sdk/client/ah;->a(Lcom/kaolafm/sdk/client/ErrorInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
