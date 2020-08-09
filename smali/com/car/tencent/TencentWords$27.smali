.class Lcom/car/tencent/TencentWords$27;
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

    iput-object p1, p0, Lcom/car/tencent/TencentWords$27;->this$0:Lcom/car/tencent/TencentWords;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "\u9000\u51fa\u5bfc\u822a"

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentWords$27;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5173\u95ed\u5bfc\u822a"

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentWords$27;->add(Ljava/lang/Object;)Z

    const-string v0, "\u7ed3\u675f\u5bfc\u822a"

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentWords$27;->add(Ljava/lang/Object;)Z

    const-string v0, "\u7ec8\u6b62\u5bfc\u822a"

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentWords$27;->add(Ljava/lang/Object;)Z

    const-string v0, "\u505c\u6b62\u5bfc\u822a"

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentWords$27;->add(Ljava/lang/Object;)Z

    return-void
.end method
