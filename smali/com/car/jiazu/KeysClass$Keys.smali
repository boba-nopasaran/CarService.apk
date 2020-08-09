.class public Lcom/car/jiazu/KeysClass$Keys;
.super Ljava/lang/Object;
.source "KeysClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/jiazu/KeysClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keys"
.end annotation


# instance fields
.field public deviceid:I

.field public keyVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/jiazu/KeysClass$KeyVal;",
            ">;"
        }
    .end annotation
.end field

.field public order:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    iput v1, p0, Lcom/car/jiazu/KeysClass$Keys;->order:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/jiazu/KeysClass$Keys;->keyVals:Ljava/util/List;

    iput v1, p0, Lcom/car/jiazu/KeysClass$Keys;->version:I

    return-void
.end method
