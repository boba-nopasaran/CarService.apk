.class public Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;
.super Landroid/os/AsyncTask;
.source "AndroidAppProcessLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final listener:Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$Listener;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;->listener:Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/hongfans/carmedia/processes/AndroidProcesses;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$1;

    invoke-direct {v1, p0}, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$1;-><init>(Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;->listener:Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$Listener;

    invoke-interface {v0, p1}, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$Listener;->onComplete(Ljava/util/List;)V

    return-void
.end method
