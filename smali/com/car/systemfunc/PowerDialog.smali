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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lcom/car/systemfunc/PowerDialog;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/car/systemfunc/PowerDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/car/systemfunc/PowerDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/car/systemfunc/PowerDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/PowerDialog;->requestWindowFeature(I)Z

    .line 39
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/PowerDialog;->setContentView(I)V

    .line 41
    const v1, 0x7f0b000e

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/PowerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/car/systemfunc/ImageViewIcon;

    .line 42
    .local v0, "view":Lcom/car/systemfunc/ImageViewIcon;
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

    .line 43
    new-instance v1, Lcom/car/systemfunc/PowerDialog$1;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/PowerDialog$1;-><init>(Lcom/car/systemfunc/PowerDialog;)V

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/ImageViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v1, p0, Lcom/car/systemfunc/PowerDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getDvrSlowTime(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    .line 54
    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/ImageViewIcon;->setText(I)V

    .line 57
    :cond_0
    const v1, 0x7f0b000f

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/PowerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Lcom/car/systemfunc/ImageViewIcon;
    check-cast v0, Lcom/car/systemfunc/ImageViewIcon;

    .line 58
    .restart local v0    # "view":Lcom/car/systemfunc/ImageViewIcon;
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

    .line 59
    new-instance v1, Lcom/car/systemfunc/PowerDialog$2;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/PowerDialog$2;-><init>(Lcom/car/systemfunc/PowerDialog;)V

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/ImageViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f0b0010

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/PowerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Lcom/car/systemfunc/ImageViewIcon;
    check-cast v0, Lcom/car/systemfunc/ImageViewIcon;

    .line 70
    .restart local v0    # "view":Lcom/car/systemfunc/ImageViewIcon;
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

    .line 71
    new-instance v1, Lcom/car/systemfunc/PowerDialog$3;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/PowerDialog$3;-><init>(Lcom/car/systemfunc/PowerDialog;)V

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/ImageViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public show()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 84
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 85
    const v5, 0x7f0b000f

    invoke-virtual {p0, v5}, Lcom/car/systemfunc/PowerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 87
    .local v3, "view":Landroid/view/View;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    .local v2, "ifilter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/car/systemfunc/PowerDialog;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 89
    .local v0, "batteryStatus":Landroid/content/Intent;
    const-string v5, "plugged"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 90
    .local v1, "chargePlug":I
    if-nez v1, :cond_1

    const-string v5, "ro.settings.remove"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "battery"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 91
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :goto_0
    const v5, 0x7f0b000e

    invoke-virtual {p0, v5}, Lcom/car/systemfunc/PowerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/car/systemfunc/ImageViewIcon;

    .line 97
    .local v4, "viewSuspend":Lcom/car/systemfunc/ImageViewIcon;
    iget-object v5, p0, Lcom/car/systemfunc/PowerDialog;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/car/common/ProviderUtils;->getDvrSlowTime(Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_2

    .line 98
    const v5, 0x7f090034

    invoke-virtual {v4, v5}, Lcom/car/systemfunc/ImageViewIcon;->setText(I)V

    .line 102
    :goto_1
    const/4 v5, 0x2

    const-string v6, "ro.sleep_dialog_shutdown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 103
    invoke-virtual {v4, v8}, Lcom/car/systemfunc/ImageViewIcon;->setVisibility(I)V

    .line 105
    :cond_0
    return-void

    .line 93
    .end local v4    # "viewSuspend":Lcom/car/systemfunc/ImageViewIcon;
    :cond_1
#by boba 14.04.2021
#shutdown button
#    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 100
    .restart local v4    # "viewSuspend":Lcom/car/systemfunc/ImageViewIcon;
    :cond_2
    iget-object v5, p0, Lcom/car/systemfunc/PowerDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f090035

    invoke-static {v5, v6}, Lcom/car/common/OEM;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/car/systemfunc/ImageViewIcon;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
