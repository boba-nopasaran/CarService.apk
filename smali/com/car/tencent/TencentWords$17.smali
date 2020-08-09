.class Lcom/car/tencent/TencentWords$17;
.super Ljava/util/ArrayList;
.source "TencentWords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/tencent/TencentWords;->addCmdWords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/tencent/TencentWords;


# direct methods
.method constructor <init>(Lcom/car/tencent/TencentWords;)V
    .locals 1

    iput-object p1, p0, Lcom/car/tencent/TencentWords$17;->this$0:Lcom/car/tencent/TencentWords;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "\u62e8\u6253\u4e00\u952e\u901a"

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentWords$17;->add(Ljava/lang/Object;)Z

    const-string v0, "\u4e00\u952e\u901a"

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentWords$17;->add(Ljava/lang/Object;)Z

    const-string v0, "\u4eba\u5de5\u5ba2\u670d"

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentWords$17;->add(Ljava/lang/Object;)Z

    return-void
.end method
