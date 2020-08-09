.class public final Lcom/loc/bl;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/bl$a;
    }
.end annotation


# instance fields
.field private a:Lcom/loc/bm;

.field private b:Lcom/loc/bo;


# direct methods
.method public constructor <init>(Lcom/loc/bo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/loc/bl;-><init>(Lcom/loc/bo;B)V

    return-void
.end method

.method private constructor <init>(Lcom/loc/bo;B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/bl;->b:Lcom/loc/bo;

    iget-object v0, p1, Lcom/loc/bo;->e:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/loc/bm;

    iget-object v2, p0, Lcom/loc/bl;->b:Lcom/loc/bo;

    iget v2, v2, Lcom/loc/bo;->c:I

    iget-object v3, p0, Lcom/loc/bl;->b:Lcom/loc/bo;

    iget v3, v3, Lcom/loc/bo;->d:I

    invoke-direct {v1, v2, v3, v0}, Lcom/loc/bm;-><init>(IILjava/net/Proxy;)V

    iput-object v1, p0, Lcom/loc/bl;->a:Lcom/loc/bm;

    iget-object v0, p0, Lcom/loc/bl;->a:Lcom/loc/bm;

    invoke-virtual {v0}, Lcom/loc/bm;->b()V

    iget-object v0, p0, Lcom/loc/bl;->a:Lcom/loc/bm;

    invoke-virtual {v0}, Lcom/loc/bm;->a()V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/loc/bo;->e:Ljava/net/Proxy;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/loc/bl$a;)V
    .locals 4

    iget-object v0, p0, Lcom/loc/bl;->a:Lcom/loc/bm;

    iget-object v1, p0, Lcom/loc/bl;->b:Lcom/loc/bo;

    invoke-virtual {v1}, Lcom/loc/bo;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/bl;->b:Lcom/loc/bo;

    invoke-virtual {v2}, Lcom/loc/bo;->b()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/bl;->b:Lcom/loc/bo;

    invoke-virtual {v3}, Lcom/loc/bo;->b_()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/loc/bm;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/loc/bl$a;)V

    return-void
.end method
