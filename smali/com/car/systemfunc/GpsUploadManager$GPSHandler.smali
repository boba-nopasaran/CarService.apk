.class final Lcom/car/systemfunc/GpsUploadManager$GPSHandler;
.super Landroid/os/Handler;
.source "GpsUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/GpsUploadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GPSHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/GpsUploadManager;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/GpsUploadManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/GpsUploadManager$GPSHandler;->this$0:Lcom/car/systemfunc/GpsUploadManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/car/systemfunc/GpsUploadManager$GPSHandler;->this$0:Lcom/car/systemfunc/GpsUploadManager;

    invoke-static {v1, v0}, Lcom/car/systemfunc/GpsUploadManager;->access$300(Lcom/car/systemfunc/GpsUploadManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/car/systemfunc/GpsUploadManager$GPSHandler;->this$0:Lcom/car/systemfunc/GpsUploadManager;

    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Lcom/car/systemfunc/GpsUploadManager;->access$200(Lcom/car/systemfunc/GpsUploadManager;Ljava/lang/Exception;I)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/car/systemfunc/GpsUploadManager$GPSHandler;->this$0:Lcom/car/systemfunc/GpsUploadManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/car/systemfunc/GpsUploadManager;->access$400(Lcom/car/systemfunc/GpsUploadManager;Ljava/lang/String;[B)Z

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/car/systemfunc/GpsUploadManager$GPSHandler;->this$0:Lcom/car/systemfunc/GpsUploadManager;

    invoke-virtual {v1}, Lcom/car/systemfunc/GpsUploadManager;->doUploadGps()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
