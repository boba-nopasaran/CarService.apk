.class public Lcom/car/jiazu/KeysClass$KeyVal;
.super Ljava/lang/Object;
.source "KeysClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/jiazu/KeysClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyVal"
.end annotation


# instance fields
.field public delay:I

.field public val:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/car/jiazu/KeysClass$KeyVal;->val:I

    iput v0, p0, Lcom/car/jiazu/KeysClass$KeyVal;->delay:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/car/jiazu/KeysClass$KeyVal;->val:I

    iput v0, p0, Lcom/car/jiazu/KeysClass$KeyVal;->delay:I

    iput p2, p0, Lcom/car/jiazu/KeysClass$KeyVal;->val:I

    iput p1, p0, Lcom/car/jiazu/KeysClass$KeyVal;->delay:I

    return-void
.end method
