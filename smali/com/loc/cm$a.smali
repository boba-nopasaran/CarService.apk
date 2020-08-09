.class final Lcom/loc/cm$a;
.super Ljava/lang/Object;
.source "DNSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/cm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/loc/cp;

.field final synthetic b:Lcom/loc/cm;


# direct methods
.method constructor <init>(Lcom/loc/cm;Lcom/loc/cp;)V
    .locals 1

    iput-object p1, p0, Lcom/loc/cm$a;->b:Lcom/loc/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cm$a;->a:Lcom/loc/cp;

    iput-object p2, p0, Lcom/loc/cm$a;->a:Lcom/loc/cp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/loc/cm$a;->b:Lcom/loc/cm;

    iget v1, v0, Lcom/loc/cm;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/loc/cm;->b:I

    iget-object v0, p0, Lcom/loc/cm$a;->b:Lcom/loc/cm;

    iget-object v1, p0, Lcom/loc/cm$a;->a:Lcom/loc/cp;

    invoke-virtual {v0, v1}, Lcom/loc/cm;->b(Lcom/loc/cp;)V

    iget-object v0, p0, Lcom/loc/cm$a;->b:Lcom/loc/cm;

    iget v1, v0, Lcom/loc/cm;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/loc/cm;->b:I

    return-void
.end method
