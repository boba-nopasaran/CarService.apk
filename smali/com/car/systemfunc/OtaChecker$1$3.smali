.class Lcom/car/systemfunc/OtaChecker$1$3;
.super Ljava/lang/Object;
.source "OtaChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/OtaChecker$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/systemfunc/OtaChecker$1;

.field final synthetic val$hash:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/OtaChecker$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/car/systemfunc/OtaChecker$1$3;->this$1:Lcom/car/systemfunc/OtaChecker$1;

    iput-object p2, p0, Lcom/car/systemfunc/OtaChecker$1$3;->val$hash:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v8, 0x3c

    const/4 v7, 0x1

    .line 185
    :try_start_0
    iget-object v4, p0, Lcom/car/systemfunc/OtaChecker$1$3;->this$1:Lcom/car/systemfunc/OtaChecker$1;

    iget-object v4, v4, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    const-string v5, "/sdcard/Download/ota.zip"

    const-string v6, "/cache/ota.zip"

    invoke-virtual {v4, v5, v6}, Lcom/car/systemfunc/OtaChecker;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, "i":I
    const/4 v3, 0x0

    .line 189
    .local v3, "value":I
    const-string v4, "sys.cache.remount"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v2, v1

    .line 191
    .end local v1    # "i":I
    .local v2, "i":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-ge v2, v8, :cond_1

    .line 192
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 193
    const-string v4, "sys.cache.remount"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 194
    if-eq v3, v7, :cond_0

    .line 195
    const-string v4, "CarSvc_OtaChecker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cache remount return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_1
    const-string v0, ""

    .line 200
    .local v0, "hash2":Ljava/lang/String;
    if-lt v1, v8, :cond_2

    .line 201
    const-string v4, "CarSvc_OtaChecker"

    const-string v5, "No reply from cache remount!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_2
    const-string v4, "/cache/ota.zip"

    invoke-static {v4}, Lcom/car/utils/QETag;->file(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v4, p0, Lcom/car/systemfunc/OtaChecker$1$3;->val$hash:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 207
    iget-object v4, p0, Lcom/car/systemfunc/OtaChecker$1$3;->this$1:Lcom/car/systemfunc/OtaChecker$1;

    const/16 v5, 0x66

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Lcom/car/systemfunc/OtaChecker$1;->sendEmptyMessageDelayed(IJ)Z

    .line 215
    .end local v0    # "hash2":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "value":I
    :goto_0
    return-void

    .line 209
    .restart local v0    # "hash2":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v3    # "value":I
    :cond_3
    iget-object v4, p0, Lcom/car/systemfunc/OtaChecker$1$3;->this$1:Lcom/car/systemfunc/OtaChecker$1;

    iget-object v4, v4, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    iget-object v4, v4, Lcom/car/systemfunc/OtaChecker;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/car/systemfunc/OtaChecker$1$3;->this$1:Lcom/car/systemfunc/OtaChecker$1;

    iget-object v7, v7, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    iget-wide v8, v7, Lcom/car/systemfunc/OtaChecker;->mReference:J

    aput-wide v8, v5, v6

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager;->remove([J)I

    .line 210
    iget-object v4, p0, Lcom/car/systemfunc/OtaChecker$1$3;->this$1:Lcom/car/systemfunc/OtaChecker$1;

    const/16 v5, 0x67

    invoke-virtual {v4, v5}, Lcom/car/systemfunc/OtaChecker$1;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    .end local v0    # "hash2":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "value":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method
