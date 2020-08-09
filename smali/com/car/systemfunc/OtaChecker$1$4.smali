.class Lcom/car/systemfunc/OtaChecker$1$4;
.super Ljava/lang/Object;
.source "OtaChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/OtaChecker$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/systemfunc/OtaChecker$1;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/OtaChecker$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/OtaChecker$1$4;->this$1:Lcom/car/systemfunc/OtaChecker$1;

    iput-object p2, p0, Lcom/car/systemfunc/OtaChecker$1$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/car/systemfunc/OtaChecker$1$4;->this$1:Lcom/car/systemfunc/OtaChecker$1;

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    iget-object v1, p0, Lcom/car/systemfunc/OtaChecker$1$4;->val$url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/OtaChecker;->downloadOtaFile(Landroid/net/Uri;)V

    return-void
.end method
