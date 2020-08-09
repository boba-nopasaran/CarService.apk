.class final Lcom/loc/bt$1;
.super Ljava/lang/Object;
.source "StatisticsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/bt;->a(Lcom/loc/bs;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/loc/bs;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/loc/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bt$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/bt$1;->b:Lcom/loc/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/loc/bt$1;->a:Landroid/content/Context;

    sget-object v1, Lcom/loc/x;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bt$1;->b:Lcom/loc/bs;

    invoke-virtual {v2}, Lcom/loc/bs;->a()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/loc/bu;->a(Landroid/content/Context;Ljava/lang/String;[B)V

    return-void
.end method
