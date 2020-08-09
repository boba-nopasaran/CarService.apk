.class public Lcom/car/systemfunc/PowerDialog;
.super Landroid/app/Dialog;
.source "PowerDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSvc_PowerDialog"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/car/systemfunc/PowerDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/car/systemfunc/PowerDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/PowerDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/PowerDialog;->requestWindowFeature(I)Z

    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/PowerDialog;->setContentView(I)V

    const v1, 0x7f0b000e

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/PowerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/car/systemfunc/ImageViewIcon;

    iget-object v1, p0, Lcom/car/systemfunc/PowerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/ImageViewIcon;->setIcon(Landroid/graphics/Bitmap;)V

    new-instance v1, Lcom/car/systemfunc/PowerDialog$1;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/PowerDialog$1;-><init>(Lcom/car/systemfunc/PowerDialog;)V

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/ImageViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/car/systemfunc/PowerDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getDvrSlowTime(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/ImageViewIcon;->setText(I)V

    :cond_0
    const v1, 0x7f0b000f

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/PowerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/car/systemfunc/ImageViewIcon;

    iget-object v1, p0, Lcom/car/systemfunc/PowerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/ImageViewIcon;->setIcon(Landroid/graphics/Bitmap;)V

    new-instance v1, Lcom/car/systemfunc/PowerDialog$2;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/PowerDialog$2;-><init>(Lcom/car/systemfunc/PowerDialog;)V

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/ImageViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0010

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/PowerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/car/systemfunc/ImageViewIcon;

    iget-object v1, p0, Lcom/car/systemfunc/PowerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/ImageViewIcon;->setIcon(Landroid/graphics/Bitmap;)V

    new-instance v1, Lcom/car/systemfunc/PowerDialog$3;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/PowerDialog$3;-><init>(Lcom/car/systemfunc/PowerDialog;)V

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/ImageViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show()V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const v5, 0x7f0b000f

    invoke-virtual {p0, v5}, Lcom/car/systemfunc/PowerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/car/systemfunc/PowerDialog;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "plugged"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const-string v5, "ro.settings.remove"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "battery"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v5, 0x7f0b000e

    invoke-virtual {p0, v5}, Lcom/car/systemfunc/PowerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/car/systemfunc/ImageViewIcon;

    iget-object v5, p0, Lcom/car/systemfunc/PowerDialog;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/car/common/ProviderUtils;->getDvrSlowTime(Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_2

    const v5, 0x7f090034

    invoke-virtual {v4, v5}, Lcom/car/systemfunc/ImageViewIcon;->setText(I)V

    :goto_1
    const/4 v5, 0x2

    const-string v6, "ro.sleep_dialog_shutdown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v4, v8}, Lcom/car/systemfunc/ImageViewIcon;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/car/systemfunc/PowerDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f090035

    invoke-static {v5, v6}, Lcom/car/common/OEM;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/car/systemfunc/ImageViewIcon;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
