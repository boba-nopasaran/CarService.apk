.class Lcom/car/tencent/TencentCall$1$1;
.super Ljava/lang/Object;
.source "TencentCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/tencent/TencentCall$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/tencent/TencentCall$1;


# direct methods
.method constructor <init>(Lcom/car/tencent/TencentCall$1;)V
    .locals 0

    iput-object p1, p0, Lcom/car/tencent/TencentCall$1$1;->this$1:Lcom/car/tencent/TencentCall$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/car/tencent/TencentCall$1$1;->this$1:Lcom/car/tencent/TencentCall$1;

    iget-object v1, v1, Lcom/car/tencent/TencentCall$1;->this$0:Lcom/car/tencent/TencentCall;

    iget-object v2, p0, Lcom/car/tencent/TencentCall$1$1;->this$1:Lcom/car/tencent/TencentCall$1;

    iget-object v2, v2, Lcom/car/tencent/TencentCall$1;->this$0:Lcom/car/tencent/TencentCall;

    iget-object v2, v2, Lcom/car/tencent/TencentCall;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/car/tencent/TencentCall;->readContactsFromDatabase(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASTelManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->uploadTelContacts(Ljava/util/ArrayList;)V

    return-void
.end method
