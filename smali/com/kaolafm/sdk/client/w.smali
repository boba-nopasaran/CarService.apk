.class Lcom/kaolafm/sdk/client/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kaolafm/sdk/client/i$a;


# instance fields
.field final synthetic a:Lcom/kaolafm/sdk/client/i$a;

.field final synthetic b:Lcom/kaolafm/sdk/client/i;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/i$a;)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/w;->b:Lcom/kaolafm/sdk/client/i;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/w;->a:Lcom/kaolafm/sdk/client/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/kaolafm/sdk/client/w;->b:Lcom/kaolafm/sdk/client/i;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/i;->f(Lcom/kaolafm/sdk/client/i;)Lcom/kaolafm/sdk/client/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/w;->b:Lcom/kaolafm/sdk/client/i;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/i;->d(Lcom/kaolafm/sdk/client/i;)Lcom/kaolafm/sdk/client/c;

    move-result-object v0

    iget-object v1, p0, Lcom/kaolafm/sdk/client/w;->b:Lcom/kaolafm/sdk/client/i;

    invoke-static {v1}, Lcom/kaolafm/sdk/client/i;->f(Lcom/kaolafm/sdk/client/i;)Lcom/kaolafm/sdk/client/ai;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kaolafm/sdk/client/c;->a(Lcom/kaolafm/sdk/client/ag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/w;->a:Lcom/kaolafm/sdk/client/i$a;

    invoke-interface {v0}, Lcom/kaolafm/sdk/client/i$a;->a()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
