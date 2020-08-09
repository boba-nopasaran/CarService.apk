.class Lcom/car/tencent/TencentWords$3;
.super Ljava/util/ArrayList;
.source "TencentWords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/tencent/TencentWords;->addWakeupWords()V
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

    iput-object p1, p0, Lcom/car/tencent/TencentWords$3;->this$0:Lcom/car/tencent/TencentWords;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/car/tencent/TencentWords$3;->this$0:Lcom/car/tencent/TencentWords;

    iget-object v0, v0, Lcom/car/tencent/TencentWords;->HOMEBACK2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentWords$3;->add(Ljava/lang/Object;)Z

    return-void
.end method
