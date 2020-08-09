.class Lcom/hongfans/carmedia/MediaAPI$4;
.super Ljava/lang/Object;
.source "MediaAPI.java"

# interfaces
.implements Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hongfans/carmedia/MediaAPI;->startAPP(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hongfans/carmedia/MediaAPI;

.field final synthetic val$paramContext:Landroid/content/Context;

.field final synthetic val$switchScreen:Z


# direct methods
.method constructor <init>(Lcom/hongfans/carmedia/MediaAPI;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/carmedia/MediaAPI$4;->this$0:Lcom/hongfans/carmedia/MediaAPI;

    iput-object p2, p0, Lcom/hongfans/carmedia/MediaAPI$4;->val$paramContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/hongfans/carmedia/MediaAPI$4;->val$switchScreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/hongfans/carmedia/MediaAPI$4;->this$0:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/hongfans/carmedia/MediaAPI$4;->val$paramContext:Landroid/content/Context;

    const-string v2, "com.hongfans.rearview.MainActivity"

    iget-boolean v3, p0, Lcom/hongfans/carmedia/MediaAPI$4;->val$switchScreen:Z

    invoke-static {v0, v1, v2, v5, v3}, Lcom/hongfans/carmedia/MediaAPI;->access$700(Lcom/hongfans/carmedia/MediaAPI;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    const-string v0, "startAPP 0or1--"

    invoke-static {v0, v4}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hongfans/carmedia/MediaAPI$4;->this$0:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/hongfans/carmedia/MediaAPI$4;->val$paramContext:Landroid/content/Context;

    const-string v2, "com.hongfans.rearview.SplashActivity"

    iget-boolean v3, p0, Lcom/hongfans/carmedia/MediaAPI$4;->val$switchScreen:Z

    invoke-static {v0, v1, v2, v5, v3}, Lcom/hongfans/carmedia/MediaAPI;->access$700(Lcom/hongfans/carmedia/MediaAPI;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    const-string v0, "startAPP 0or2--"

    invoke-static {v0, v4}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;Z)V

    goto :goto_0
.end method
