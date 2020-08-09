.class Lcom/amap/api/services/a/ar$a;
.super Ljava/util/TimerTask;
.source "NearbySearchCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/ar;


# direct methods
.method private constructor <init>(Lcom/amap/api/services/a/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/a/ar$a;->a:Lcom/amap/api/services/a/ar;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/services/a/ar;Lcom/amap/api/services/a/ar$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/services/a/ar$a;-><init>(Lcom/amap/api/services/a/ar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ar$a;->a:Lcom/amap/api/services/a/ar;

    invoke-static {v0}, Lcom/amap/api/services/a/ar;->d(Lcom/amap/api/services/a/ar;)Lcom/amap/api/services/nearby/UploadInfoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/ar$a;->a:Lcom/amap/api/services/a/ar;

    invoke-static {v0}, Lcom/amap/api/services/a/ar;->d(Lcom/amap/api/services/a/ar;)Lcom/amap/api/services/nearby/UploadInfoCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/services/nearby/UploadInfoCallback;->OnUploadInfoCallback()Lcom/amap/api/services/nearby/UploadInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/a/ar$a;->a:Lcom/amap/api/services/a/ar;

    invoke-static {v1, v0}, Lcom/amap/api/services/a/ar;->b(Lcom/amap/api/services/a/ar;Lcom/amap/api/services/nearby/UploadInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/services/a/ar$a;->a:Lcom/amap/api/services/a/ar;

    invoke-static {v1}, Lcom/amap/api/services/a/ar;->a(Lcom/amap/api/services/a/ar;)Lcom/amap/api/services/a/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/amap/api/services/a/ar$a;->a:Lcom/amap/api/services/a/ar;

    invoke-static {v2}, Lcom/amap/api/services/a/ar;->b(Lcom/amap/api/services/a/ar;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/amap/api/services/a/ar$a;->a:Lcom/amap/api/services/a/ar;

    invoke-static {v0}, Lcom/amap/api/services/a/ar;->a(Lcom/amap/api/services/a/ar;)Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/q;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbySearch"

    const-string v2, "UpdateDataTask"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
