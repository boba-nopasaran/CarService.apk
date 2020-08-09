.class Lcom/kaolafm/sdk/client/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kaolafm/sdk/client/i$a;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/kaolafm/sdk/client/i;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/i;Z)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/u;->b:Lcom/kaolafm/sdk/client/i;

    iput-boolean p2, p0, Lcom/kaolafm/sdk/client/u;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/u;->b:Lcom/kaolafm/sdk/client/i;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/i;->d(Lcom/kaolafm/sdk/client/i;)Lcom/kaolafm/sdk/client/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kaolafm/sdk/client/u;->a:Z

    invoke-interface {v0, v1}, Lcom/kaolafm/sdk/client/c;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
