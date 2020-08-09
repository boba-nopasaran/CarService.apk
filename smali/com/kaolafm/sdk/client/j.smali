.class Lcom/kaolafm/sdk/client/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/kaolafm/sdk/client/i$a;

.field final synthetic b:Lcom/kaolafm/sdk/client/i;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/i$a;)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/j;->b:Lcom/kaolafm/sdk/client/i;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/j;->a:Lcom/kaolafm/sdk/client/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/kaolafm/sdk/client/j;->b:Lcom/kaolafm/sdk/client/i;

    invoke-static {p2}, Lcom/kaolafm/sdk/client/c$a;->a(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/c;)Lcom/kaolafm/sdk/client/c;

    iget-object v0, p0, Lcom/kaolafm/sdk/client/j;->b:Lcom/kaolafm/sdk/client/i;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i;)V

    iget-object v0, p0, Lcom/kaolafm/sdk/client/j;->a:Lcom/kaolafm/sdk/client/i$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/j;->a:Lcom/kaolafm/sdk/client/i$a;

    invoke-interface {v0}, Lcom/kaolafm/sdk/client/i$a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/j;->b:Lcom/kaolafm/sdk/client/i;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/i;->b(Lcom/kaolafm/sdk/client/i;)Lcom/kaolafm/sdk/client/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaolafm/sdk/client/j;->b:Lcom/kaolafm/sdk/client/i;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/i;->b(Lcom/kaolafm/sdk/client/i;)Lcom/kaolafm/sdk/client/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kaolafm/sdk/client/h;->a(Landroid/content/ComponentName;)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/kaolafm/sdk/client/j;->b:Lcom/kaolafm/sdk/client/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/c;)Lcom/kaolafm/sdk/client/c;

    iget-object v0, p0, Lcom/kaolafm/sdk/client/j;->b:Lcom/kaolafm/sdk/client/i;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/i;->c(Lcom/kaolafm/sdk/client/i;)V

    iget-object v0, p0, Lcom/kaolafm/sdk/client/j;->b:Lcom/kaolafm/sdk/client/i;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/i;->b(Lcom/kaolafm/sdk/client/i;)Lcom/kaolafm/sdk/client/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/j;->b:Lcom/kaolafm/sdk/client/i;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/i;->b(Lcom/kaolafm/sdk/client/i;)Lcom/kaolafm/sdk/client/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kaolafm/sdk/client/h;->b(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method
