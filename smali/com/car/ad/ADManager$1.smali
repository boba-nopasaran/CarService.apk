.class Lcom/car/ad/ADManager$1;
.super Ljava/lang/Object;
.source "ADManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/ad/ADManager;->reportAD(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/ad/ADManager;

.field final synthetic val$adid:J

.field final synthetic val$clicked:I


# direct methods
.method constructor <init>(Lcom/car/ad/ADManager;JI)V
    .locals 0

    iput-object p1, p0, Lcom/car/ad/ADManager$1;->this$0:Lcom/car/ad/ADManager;

    iput-wide p2, p0, Lcom/car/ad/ADManager$1;->val$adid:J

    iput p4, p0, Lcom/car/ad/ADManager$1;->val$clicked:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v7, p0, Lcom/car/ad/ADManager$1;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v7}, Lcom/car/ad/ADManager;->access$000(Lcom/car/ad/ADManager;)Lcom/car/ad/IADClient;

    move-result-object v7

    invoke-interface {v7}, Lcom/car/ad/IADClient;->getClientID()J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Lcom/car/ad/ADReportItem;

    invoke-direct {v4}, Lcom/car/ad/ADReportItem;-><init>()V

    iget-wide v8, p0, Lcom/car/ad/ADManager$1;->val$adid:J

    iput-wide v8, v4, Lcom/car/ad/ADReportItem;->adid:J

    iget-object v7, p0, Lcom/car/ad/ADManager$1;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v7}, Lcom/car/ad/ADManager;->access$000(Lcom/car/ad/ADManager;)Lcom/car/ad/IADClient;

    move-result-object v7

    invoke-interface {v7}, Lcom/car/ad/IADClient;->getClientID()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/car/ad/ADReportItem;->clientid:J

    iget-object v7, p0, Lcom/car/ad/ADManager$1;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v7}, Lcom/car/ad/ADManager;->access$000(Lcom/car/ad/ADManager;)Lcom/car/ad/IADClient;

    move-result-object v7

    invoke-interface {v7}, Lcom/car/ad/IADClient;->getClientTime()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/car/ad/ADReportItem;->playtime:J

    iget-object v7, p0, Lcom/car/ad/ADManager$1;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v7}, Lcom/car/ad/ADManager;->access$000(Lcom/car/ad/ADManager;)Lcom/car/ad/IADClient;

    move-result-object v7

    invoke-interface {v7}, Lcom/car/ad/IADClient;->getClientCity()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/car/ad/ADReportItem;->city:Ljava/lang/String;

    iget v7, p0, Lcom/car/ad/ADManager$1;->val$clicked:I

    iput v7, v4, Lcom/car/ad/ADReportItem;->clicked:I

    iget-object v7, p0, Lcom/car/ad/ADManager$1;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v7}, Lcom/car/ad/ADManager;->access$000(Lcom/car/ad/ADManager;)Lcom/car/ad/IADClient;

    move-result-object v7

    invoke-interface {v7}, Lcom/car/ad/IADClient;->getClientModel()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/car/ad/ADReportItem;->model:Ljava/lang/String;

    iget-object v7, p0, Lcom/car/ad/ADManager$1;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v7}, Lcom/car/ad/ADManager;->access$000(Lcom/car/ad/ADManager;)Lcom/car/ad/IADClient;

    move-result-object v7

    invoke-interface {v7}, Lcom/car/ad/IADClient;->getClientToken()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/car/ad/ADReportItem;->token:Ljava/lang/String;

    iget-object v7, p0, Lcom/car/ad/ADManager$1;->this$0:Lcom/car/ad/ADManager;

    iget-wide v8, p0, Lcom/car/ad/ADManager$1;->val$adid:J

    invoke-static {v7, v8, v9}, Lcom/car/ad/ADManager;->access$100(Lcom/car/ad/ADManager;J)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/car/ad/ADManager$1;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v7}, Lcom/car/ad/ADManager;->access$200(Lcom/car/ad/ADManager;)Lcom/car/ad/ADStorage;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/car/ad/ADStorage;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    iget-object v7, p0, Lcom/car/ad/ADManager$1;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v7}, Lcom/car/ad/ADManager;->access$200(Lcom/car/ad/ADManager;)Lcom/car/ad/ADStorage;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Lcom/car/ad/ADStorage;->saveKeyValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/car/ad/ADManager$1;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v7, v4}, Lcom/car/ad/ADManager;->access$300(Lcom/car/ad/ADManager;Lcom/car/ad/ADReportItem;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v7, p0, Lcom/car/ad/ADManager$1;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v7}, Lcom/car/ad/ADManager;->access$200(Lcom/car/ad/ADManager;)Lcom/car/ad/ADStorage;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/car/ad/ADStorage;->insertADReportItem(Lcom/car/ad/ADReportItem;)V

    goto :goto_0

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1
.end method
