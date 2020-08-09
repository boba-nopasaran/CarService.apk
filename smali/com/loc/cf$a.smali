.class final Lcom/loc/cf$a;
.super Ljava/lang/Object;
.source "CollectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/cf;


# direct methods
.method constructor <init>(Lcom/loc/cf;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/cf$a;->a:Lcom/loc/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/cf$a;->a:Lcom/loc/cf;

    iget-object v0, v0, Lcom/loc/cf;->a:Ljava/lang/Object;

    const-string v1, "destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/loc/cw;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CollectionManager"

    const-string v2, "stop3rdCM"

    invoke-static {v0, v1, v2}, Lcom/loc/ct;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
