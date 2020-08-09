.class Lcom/car/tencent/TencentWords$12;
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

    iput-object p1, p0, Lcom/car/tencent/TencentWords$12;->this$0:Lcom/car/tencent/TencentWords;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "\u6253\u5f00\u6444\u50cf\u5934"

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentWords$12;->add(Ljava/lang/Object;)Z

    const-string v0, "\u6253\u5f00\u8bb0\u5f55\u4eea"

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentWords$12;->add(Ljava/lang/Object;)Z

    const-string v0, "\u770b\u5168\u90e8"

    invoke-virtual {p0, v0}, Lcom/car/tencent/TencentWords$12;->add(Ljava/lang/Object;)Z

    return-void
.end method
