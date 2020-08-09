.class Lcom/hongfans/carmedia/MediaAPI$5;
.super Ljava/lang/Object;
.source "MediaAPI.java"

# interfaces
.implements Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hongfans/carmedia/MediaAPI;

.field final synthetic val$keyword:Ljava/lang/String;

.field final synthetic val$paramContext:Landroid/content/Context;

.field final synthetic val$semantics:Ljava/lang/String;

.field final synthetic val$switchScreen:Z


# direct methods
.method constructor <init>(Lcom/hongfans/carmedia/MediaAPI;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/carmedia/MediaAPI$5;->this$0:Lcom/hongfans/carmedia/MediaAPI;

    iput-object p2, p0, Lcom/hongfans/carmedia/MediaAPI$5;->val$keyword:Ljava/lang/String;

    iput-object p3, p0, Lcom/hongfans/carmedia/MediaAPI$5;->val$semantics:Ljava/lang/String;

    iput-object p4, p0, Lcom/hongfans/carmedia/MediaAPI$5;->val$paramContext:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/hongfans/carmedia/MediaAPI$5;->val$switchScreen:Z

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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "keyword"

    iget-object v3, p0, Lcom/hongfans/carmedia/MediaAPI$5;->val$keyword:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "semantics"

    iget-object v3, p0, Lcom/hongfans/carmedia/MediaAPI$5;->val$semantics:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "isswitchScreen"

    const-string v3, "isswitchScreen"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/hongfans/carmedia/MediaAPI$5;->this$0:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v3, p0, Lcom/hongfans/carmedia/MediaAPI$5;->val$paramContext:Landroid/content/Context;

    const-string v4, "com.hongfans.rearview.action.searchmusic"

    invoke-static {v2, v3, v4, v0}, Lcom/hongfans/carmedia/MediaAPI;->access$800(Lcom/hongfans/carmedia/MediaAPI;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "keyword"

    iget-object v3, p0, Lcom/hongfans/carmedia/MediaAPI$5;->val$keyword:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "semantics"

    iget-object v3, p0, Lcom/hongfans/carmedia/MediaAPI$5;->val$semantics:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/hongfans/carmedia/MediaAPI$5;->this$0:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v3, p0, Lcom/hongfans/carmedia/MediaAPI$5;->val$paramContext:Landroid/content/Context;

    const-string v4, "com.hongfans.rearview.SplashActivity"

    iget-boolean v5, p0, Lcom/hongfans/carmedia/MediaAPI$5;->val$switchScreen:Z

    invoke-static {v2, v3, v4, v1, v5}, Lcom/hongfans/carmedia/MediaAPI;->access$700(Lcom/hongfans/carmedia/MediaAPI;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playMusic 0 or 1-- keyword "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hongfans/carmedia/MediaAPI$5;->val$keyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", switchScreen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/hongfans/carmedia/MediaAPI$5;->val$switchScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;Z)V

    return-void
.end method
