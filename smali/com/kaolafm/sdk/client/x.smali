.class Lcom/kaolafm/sdk/client/x;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/kaolafm/sdk/client/i;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/i;)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/x;->a:Lcom/kaolafm/sdk/client/i;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/kaolafm/sdk/client/x;->a:Lcom/kaolafm/sdk/client/i;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/i;->g(Lcom/kaolafm/sdk/client/i;)V

    return-void
.end method
