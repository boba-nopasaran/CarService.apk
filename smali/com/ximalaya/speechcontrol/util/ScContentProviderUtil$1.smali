.class Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$1;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;


# direct methods
.method constructor <init>(Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$1;->this$0:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const/16 v4, 0x74

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri\u53d1\u751f\u6539\u53d8\u4e86   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$1;->this$0:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    const/16 v1, 0x70

    invoke-static {v0, p1, v1, v3}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->access$000(Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;ZILjava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$1;->this$0:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p1, v4, v1}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->access$000(Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;ZILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$1;->this$0:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p1, v4, v1}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->access$000(Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;ZILjava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$1;->this$0:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    const/16 v1, 0x72

    invoke-static {v0, p1, v1, v3}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->access$000(Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;ZILjava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$1;->this$0:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    const/16 v1, 0x6f

    invoke-static {v0, p1, v1, v3}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->access$000(Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;ZILjava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
