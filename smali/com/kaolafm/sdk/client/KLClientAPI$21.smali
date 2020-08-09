.class Lcom/kaolafm/sdk/client/KLClientAPI$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaolafm/sdk/client/KLClientAPI;->unsubscribe(JLcom/kaolafm/sdk/client/SubscribeResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

.field final synthetic val$radioId:J

.field final synthetic val$result:Lcom/kaolafm/sdk/client/SubscribeResult;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/KLClientAPI;JLcom/kaolafm/sdk/client/SubscribeResult;)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$21;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    iput-wide p2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$21;->val$radioId:J

    iput-object p4, p0, Lcom/kaolafm/sdk/client/KLClientAPI$21;->val$result:Lcom/kaolafm/sdk/client/SubscribeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$21;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$000(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;

    move-result-object v0

    iget-wide v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$21;->val$radioId:J

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$21;->val$result:Lcom/kaolafm/sdk/client/SubscribeResult;

    invoke-interface {v0, v2, v3, v1}, Lcom/kaolafm/sdk/client/IClientAPI;->unsubscribe(JLcom/kaolafm/sdk/client/ISubscribeResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
