.class public Lcom/car/systemfunc/ChartDataLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ChartDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/car/systemfunc/ChartData;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_FIELDS:Ljava/lang/String; = "fields"

.field private static final KEY_TEMPLATE:Ljava/lang/String; = "template"


# instance fields
.field private final mArgs:Landroid/os/Bundle;

.field private final mSession:Landroid/net/INetworkStatsSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/car/systemfunc/ChartDataLoader;->mSession:Landroid/net/INetworkStatsSession;

    iput-object p3, p0, Lcom/car/systemfunc/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    return-void
.end method

.method public static buildArgs(Landroid/net/NetworkTemplate;)Landroid/os/Bundle;
    .locals 1

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/car/systemfunc/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static buildArgs(Landroid/net/NetworkTemplate;I)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "template"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "fields"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private loadInBackground(Landroid/net/NetworkTemplate;I)Lcom/car/systemfunc/ChartData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/car/systemfunc/ChartData;

    invoke-direct {v0}, Lcom/car/systemfunc/ChartData;-><init>()V

    iget-object v1, p0, Lcom/car/systemfunc/ChartDataLoader;->mSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v1, p1, p2}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v1

    iput-object v1, v0, Lcom/car/systemfunc/ChartData;->network:Landroid/net/NetworkStatsHistory;

    return-object v0
.end method


# virtual methods
.method public loadInBackground()Lcom/car/systemfunc/ChartData;
    .locals 5

    iget-object v3, p0, Lcom/car/systemfunc/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v4, "template"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    iget-object v3, p0, Lcom/car/systemfunc/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v4, "fields"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :try_start_0
    invoke-direct {p0, v2, v1}, Lcom/car/systemfunc/ChartDataLoader;->loadInBackground(Landroid/net/NetworkTemplate;I)Lcom/car/systemfunc/ChartData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "problem reading network stats"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/car/systemfunc/ChartDataLoader;->loadInBackground()Lcom/car/systemfunc/ChartData;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/car/systemfunc/ChartDataLoader;->cancelLoad()Z

    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    invoke-virtual {p0}, Lcom/car/systemfunc/ChartDataLoader;->forceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    invoke-virtual {p0}, Lcom/car/systemfunc/ChartDataLoader;->cancelLoad()Z

    return-void
.end method
