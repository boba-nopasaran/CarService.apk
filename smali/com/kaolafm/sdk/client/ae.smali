.class Lcom/kaolafm/sdk/client/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kaolafm/sdk/client/i$a;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/kaolafm/sdk/client/am;

.field final synthetic c:Lcom/kaolafm/sdk/client/i;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/i;Ljava/lang/String;Lcom/kaolafm/sdk/client/am;)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/ae;->c:Lcom/kaolafm/sdk/client/i;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/ae;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/kaolafm/sdk/client/ae;->b:Lcom/kaolafm/sdk/client/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/ae;->c:Lcom/kaolafm/sdk/client/i;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/i;->d(Lcom/kaolafm/sdk/client/i;)Lcom/kaolafm/sdk/client/c;

    move-result-object v0

    iget-object v1, p0, Lcom/kaolafm/sdk/client/ae;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/kaolafm/sdk/client/ae;->b:Lcom/kaolafm/sdk/client/am;

    invoke-interface {v0, v1, v2}, Lcom/kaolafm/sdk/client/c;->a(Ljava/lang/String;Lcom/kaolafm/sdk/client/f;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
