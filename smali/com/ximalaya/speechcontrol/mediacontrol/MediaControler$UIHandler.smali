.class public Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;


# direct methods
.method public constructor <init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1000(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1100(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1200(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1300(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1400(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1500(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1600(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;II)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    invoke-static {v2, v1, v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1700(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1800(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;I)V

    goto :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;

    invoke-static {v1, v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1900(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$2000(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    goto :goto_0

    :pswitch_c
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;

    invoke-static {v1, v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$2100(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$2200(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    goto :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$2300(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    goto :goto_0

    :pswitch_f
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$2400(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$2500(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$2600(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
