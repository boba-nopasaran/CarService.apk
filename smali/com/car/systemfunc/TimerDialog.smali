.class public Lcom/car/systemfunc/TimerDialog;
.super Landroid/app/Dialog;
.source "TimerDialog.java"


# static fields
.field private static REFRESH_RATE:I


# instance fields
.field private mCancelClickListener:Landroid/view/View$OnClickListener;

.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMaxSeconds:I

.field private mOkClickListener:Landroid/view/View$OnClickListener;

.field private mProgressBar:Lcom/car/systemfunc/CircleProgressBar;

.field private mShutdownClickListener:Landroid/view/View$OnClickListener;

.field private mTimeDown:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/car/systemfunc/TimerDialog;->REFRESH_RATE:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/car/systemfunc/TimerDialog$1;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/TimerDialog$1;-><init>(Lcom/car/systemfunc/TimerDialog;)V

    iput-object v0, p0, Lcom/car/systemfunc/TimerDialog;->mTimeDown:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/car/systemfunc/TimerDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/car/systemfunc/TimerDialog;->mContent:Ljava/lang/String;

    iput p3, p0, Lcom/car/systemfunc/TimerDialog;->mMaxSeconds:I

    iput-object p4, p0, Lcom/car/systemfunc/TimerDialog;->mOkClickListener:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcom/car/systemfunc/TimerDialog;->mCancelClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/car/systemfunc/TimerDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/car/systemfunc/TimerDialog$1;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/TimerDialog$1;-><init>(Lcom/car/systemfunc/TimerDialog;)V

    iput-object v0, p0, Lcom/car/systemfunc/TimerDialog;->mTimeDown:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/car/systemfunc/TimerDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/car/systemfunc/TimerDialog;->mContent:Ljava/lang/String;

    iput p3, p0, Lcom/car/systemfunc/TimerDialog;->mMaxSeconds:I

    iput-object p4, p0, Lcom/car/systemfunc/TimerDialog;->mOkClickListener:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcom/car/systemfunc/TimerDialog;->mCancelClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/car/systemfunc/TimerDialog;->mHandler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/car/systemfunc/TimerDialog;->mShutdownClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/car/systemfunc/TimerDialog;)Lcom/car/systemfunc/CircleProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/TimerDialog;->mProgressBar:Lcom/car/systemfunc/CircleProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/systemfunc/TimerDialog;)I
    .locals 1

    iget v0, p0, Lcom/car/systemfunc/TimerDialog;->mMaxSeconds:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/car/systemfunc/TimerDialog;->REFRESH_RATE:I

    return v0
.end method

.method static synthetic access$300(Lcom/car/systemfunc/TimerDialog;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/TimerDialog;->mShutdownClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/systemfunc/TimerDialog;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/TimerDialog;->mOkClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/systemfunc/TimerDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/TimerDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/systemfunc/TimerDialog;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/TimerDialog;->mCancelClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const v7, 0x7f0b001b

    const v6, 0x7f0b001a

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v8}, Lcom/car/systemfunc/TimerDialog;->requestWindowFeature(I)Z

    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/TimerDialog;->setContentView(I)V

    invoke-virtual {p0, v4}, Lcom/car/systemfunc/TimerDialog;->setCancelable(Z)V

    invoke-virtual {p0, v4}, Lcom/car/systemfunc/TimerDialog;->setCanceledOnTouchOutside(Z)V

    const v1, 0x7f0b0017

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/TimerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/car/systemfunc/CircleProgressBar;

    iput-object v1, p0, Lcom/car/systemfunc/TimerDialog;->mProgressBar:Lcom/car/systemfunc/CircleProgressBar;

    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog;->mProgressBar:Lcom/car/systemfunc/CircleProgressBar;

    iget v2, p0, Lcom/car/systemfunc/TimerDialog;->mMaxSeconds:I

    sget v3, Lcom/car/systemfunc/TimerDialog;->REFRESH_RATE:I

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/car/systemfunc/CircleProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog;->mCancelClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    const v1, 0x7f0b0018

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/TimerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/car/systemfunc/TimerDialog$2;

    invoke-direct {v2, p0}, Lcom/car/systemfunc/TimerDialog$2;-><init>(Lcom/car/systemfunc/TimerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const v1, 0x7f0b0003

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/TimerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f09002e

    invoke-static {v1, v2}, Lcom/car/common/OEM;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/car/systemfunc/TimerDialog$3;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/TimerDialog$3;-><init>(Lcom/car/systemfunc/TimerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v7}, Lcom/car/systemfunc/TimerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/car/systemfunc/TimerDialog$4;

    invoke-direct {v2, p0}, Lcom/car/systemfunc/TimerDialog$4;-><init>(Lcom/car/systemfunc/TimerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "ro.sleep_dialog_shutdown"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v8, v1, :cond_1

    invoke-virtual {p0, v7}, Lcom/car/systemfunc/TimerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/car/systemfunc/TimerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    const v1, 0x7f0b0018

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/TimerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0b0019

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/TimerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    const-string v2, "ro.sleep_dialog_shutdown"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/car/systemfunc/TimerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v7}, Lcom/car/systemfunc/TimerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/car/systemfunc/TimerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onOkClick()V
    .locals 2

    iget-object v0, p0, Lcom/car/systemfunc/TimerDialog;->mOkClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .locals 6

    const v4, 0x7f090034

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const v1, 0x7f0b000b

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/TimerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x2

    const-string v2, "ro.sleep_dialog_shutdown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getDvrSlowTime(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog;->mProgressBar:Lcom/car/systemfunc/CircleProgressBar;

    iget v2, p0, Lcom/car/systemfunc/TimerDialog;->mMaxSeconds:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/car/systemfunc/CircleProgressBar;->setProgress(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/car/systemfunc/TimerDialog;->mTimeDown:Ljava/lang/Runnable;

    const/16 v3, 0x3e8

    sget v4, Lcom/car/systemfunc/TimerDialog;->REFRESH_RATE:I

    div-int/2addr v3, v4

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getDvrSlowTime(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f09001a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
