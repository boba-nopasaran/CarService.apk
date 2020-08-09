.class Lcom/car/tencent/TencentWords$25;
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

    iput-object p1, p0, Lcom/car/tencent/TencentWords$25;->this$0:Lcom/car/tencent/TencentWords;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "\u6253\u5f00FM"

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentWords$25;->add(Ljava/lang/Object;)Z

    const-string v0, "\u6253\u5f00FM\u53d1\u5c04"

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentWords$25;->add(Ljava/lang/Object;)Z

    const-string v0, "\u6253\u5f00\u8c03\u9891\u53d1\u5c04"

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentWords$25;->add(Ljava/lang/Object;)Z

    const-string v0, "\u6253\u5f00\u6536\u97f3\u673a"

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentWords$25;->add(Ljava/lang/Object;)Z

    const-string v0, "\u542f\u52a8\u6536\u97f3\u673a"

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentWords$25;->add(Ljava/lang/Object;)Z

    return-void
.end method
