.class Lcom/car/systemfunc/OtaChecker$DownloadChangeObserver;
.super Landroid/database/ContentObserver;
.source "OtaChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/OtaChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/OtaChecker;


# direct methods
.method public constructor <init>(Lcom/car/systemfunc/OtaChecker;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/OtaChecker$DownloadChangeObserver;->this$0:Lcom/car/systemfunc/OtaChecker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v0, p0, Lcom/car/systemfunc/OtaChecker$DownloadChangeObserver;->this$0:Lcom/car/systemfunc/OtaChecker;

    iget-object v1, p0, Lcom/car/systemfunc/OtaChecker$DownloadChangeObserver;->this$0:Lcom/car/systemfunc/OtaChecker;

    iget-object v1, v1, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    const-string v2, "otadownload"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "downloadid"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/car/systemfunc/OtaChecker;->mReference:J

    iget-object v0, p0, Lcom/car/systemfunc/OtaChecker$DownloadChangeObserver;->this$0:Lcom/car/systemfunc/OtaChecker;

    iget-wide v0, v0, Lcom/car/systemfunc/OtaChecker;->mReference:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/OtaChecker$DownloadChangeObserver;->this$0:Lcom/car/systemfunc/OtaChecker;

    iget-object v1, p0, Lcom/car/systemfunc/OtaChecker$DownloadChangeObserver;->this$0:Lcom/car/systemfunc/OtaChecker;

    iget-wide v2, v1, Lcom/car/systemfunc/OtaChecker;->mReference:J

    invoke-static {v0, v2, v3}, Lcom/car/systemfunc/OtaChecker;->access$000(Lcom/car/systemfunc/OtaChecker;J)V

    :cond_0
    return-void
.end method
