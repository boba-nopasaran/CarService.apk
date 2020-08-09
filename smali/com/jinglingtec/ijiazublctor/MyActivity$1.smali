.class Lcom/jinglingtec/ijiazublctor/MyActivity$1;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jinglingtec/ijiazublctor/MyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazublctor/MyActivity;


# direct methods
.method constructor <init>(Lcom/jinglingtec/ijiazublctor/MyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/MyActivity$1;->this$0:Lcom/jinglingtec/ijiazublctor/MyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deviceBatteryLevel(I)V
    .locals 3

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/MyActivity$1;->this$0:Lcom/jinglingtec/ijiazublctor/MyActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deveiceBetteryLevel  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/MyActivity;->access$000(Lcom/jinglingtec/ijiazublctor/MyActivity;Ljava/lang/String;)V

    return-void
.end method

.method public deviceConnectionChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/MyActivity$1;->this$0:Lcom/jinglingtec/ijiazublctor/MyActivity;

    new-instance v1, Lcom/jinglingtec/ijiazublctor/MyActivity$1$1;

    invoke-direct {v1, p0, p1}, Lcom/jinglingtec/ijiazublctor/MyActivity$1$1;-><init>(Lcom/jinglingtec/ijiazublctor/MyActivity$1;Z)V

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazublctor/MyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initComplete(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "Connect Ijiazu Success"

    :goto_0
    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/MyActivity$1;->this$0:Lcom/jinglingtec/ijiazublctor/MyActivity;

    invoke-static {v1, v0}, Lcom/jinglingtec/ijiazublctor/MyActivity;->access$000(Lcom/jinglingtec/ijiazublctor/MyActivity;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public onKeySingleClick(I)V
    .locals 3

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/MyActivity$1;->this$0:Lcom/jinglingtec/ijiazublctor/MyActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SignClick keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/MyActivity;->access$000(Lcom/jinglingtec/ijiazublctor/MyActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onLongClick(I)V
    .locals 3

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/MyActivity$1;->this$0:Lcom/jinglingtec/ijiazublctor/MyActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "longClick keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/MyActivity;->access$000(Lcom/jinglingtec/ijiazublctor/MyActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onLongUpClick(I)V
    .locals 3

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/MyActivity$1;->this$0:Lcom/jinglingtec/ijiazublctor/MyActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongUpClick keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/MyActivity;->access$000(Lcom/jinglingtec/ijiazublctor/MyActivity;Ljava/lang/String;)V

    return-void
.end method
