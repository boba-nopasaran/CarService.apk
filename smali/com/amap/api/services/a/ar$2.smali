.class Lcom/amap/api/services/a/ar$2;
.super Ljava/lang/Object;
.source "NearbySearchCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/ar;->uploadNearbyInfoAsyn(Lcom/amap/api/services/nearby/UploadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/nearby/UploadInfo;

.field final synthetic b:Lcom/amap/api/services/a/ar;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/ar;Lcom/amap/api/services/nearby/UploadInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/a/ar$2;->b:Lcom/amap/api/services/a/ar;

    iput-object p2, p0, Lcom/amap/api/services/a/ar$2;->a:Lcom/amap/api/services/nearby/UploadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ar$2;->b:Lcom/amap/api/services/a/ar;

    invoke-static {v0}, Lcom/amap/api/services/a/ar;->a(Lcom/amap/api/services/a/ar;)Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/amap/api/services/a/ar$2;->b:Lcom/amap/api/services/a/ar;

    invoke-static {v1}, Lcom/amap/api/services/a/ar;->b(Lcom/amap/api/services/a/ar;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/amap/api/services/a/ar$2;->b:Lcom/amap/api/services/a/ar;

    iget-object v2, p0, Lcom/amap/api/services/a/ar$2;->a:Lcom/amap/api/services/nearby/UploadInfo;

    invoke-static {v1, v2}, Lcom/amap/api/services/a/ar;->a(Lcom/amap/api/services/a/ar;Lcom/amap/api/services/nearby/UploadInfo;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/services/a/ar$2;->b:Lcom/amap/api/services/a/ar;

    invoke-static {v1}, Lcom/amap/api/services/a/ar;->a(Lcom/amap/api/services/a/ar;)Lcom/amap/api/services/a/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/services/a/q;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbySearch"

    const-string v2, "uploadNearbyInfoAsyn"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
