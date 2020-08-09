.class Lcom/car/systemfunc/OtaChecker$1$2;
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


# direct methods
.method constructor <init>(Lcom/car/systemfunc/OtaChecker$1;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/OtaChecker$1$2;->this$1:Lcom/car/systemfunc/OtaChecker$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string v0, "CarSvc_OtaChecker"

    const-string v1, "install now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/car/systemfunc/OtaChecker$1$2;->this$1:Lcom/car/systemfunc/OtaChecker$1;

    iget-object v1, v1, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    iget-object v1, v1, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/car/systemfunc/OtaChecker$1$2;->this$1:Lcom/car/systemfunc/OtaChecker$1;

    const/16 v1, 0x68

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/systemfunc/OtaChecker$1;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
