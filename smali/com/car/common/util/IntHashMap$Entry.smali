.class final Lcom/car/common/util/IntHashMap$Entry;
.super Ljava/lang/Object;
.source "IntHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/common/util/IntHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Entry"
.end annotation


# instance fields
.field key:I

.field next:Lcom/car/common/util/IntHashMap$Entry;

.field value:I


# direct methods
.method constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/car/common/util/IntHashMap$Entry;->key:I

    iput p2, p0, Lcom/car/common/util/IntHashMap$Entry;->value:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/common/util/IntHashMap$Entry;->next:Lcom/car/common/util/IntHashMap$Entry;

    return-void
.end method
