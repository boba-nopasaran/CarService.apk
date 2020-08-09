.class Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$1;
.super Ljava/lang/Object;
.source "AndroidAppProcessLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;


# direct methods
.method constructor <init>(Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$1;->this$0:Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;)I
    .locals 2

    iget-object v0, p0, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$1;->this$0:Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;

    invoke-static {v0}, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;->access$000(Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/hongfans/carmedia/processes/Utils;->getName(Landroid/content/Context;Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$1;->this$0:Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;

    invoke-static {v1}, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;->access$000(Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/hongfans/carmedia/processes/Utils;->getName(Landroid/content/Context;Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;

    check-cast p2, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;

    invoke-virtual {p0, p1, p2}, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$1;->compare(Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;)I

    move-result v0

    return v0
.end method
