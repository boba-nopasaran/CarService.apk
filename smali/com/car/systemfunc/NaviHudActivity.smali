.class public Lcom/car/systemfunc/NaviHudActivity;
.super Landroid/app/Activity;
.source "NaviHudActivity.java"


# static fields
.field static final BRIGHTNESS_STEP:I = 0x1e

.field static final MSG_FINISH:I = 0x64

.field static final MSG_FULLSCREEN:I = 0x65

.field private static final TAG:Ljava/lang/String; = "CarSvc_NaviHudActivity"


# instance fields
.field mDownX:F

.field mDownY:F

.field mFinishedNow:Z

.field mFirstDownX:F

.field mHandler:Landroid/os/Handler;

.field mLastDownTime:J

.field private mMaximumBacklight:I

.field private mMinimumBacklight:I

.field private mPower:Landroid/os/IPowerManager;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mSleep:Z

.field mToast:Landroid/widget/Toast;

.field mToastView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    iput-boolean v0, p0, Lcom/car/systemfunc/NaviHudActivity;->mSleep:Z

    .line 80
    iput-boolean v0, p0, Lcom/car/systemfunc/NaviHudActivity;->mFinishedNow:Z

    .line 83
    new-instance v0, Lcom/car/systemfunc/NaviHudActivity$1;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/NaviHudActivity$1;-><init>(Lcom/car/systemfunc/NaviHudActivity;)V

    iput-object v0, p0, Lcom/car/systemfunc/NaviHudActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    new-instance v0, Lcom/car/systemfunc/NaviHudActivity$2;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/NaviHudActivity$2;-><init>(Lcom/car/systemfunc/NaviHudActivity;)V

    iput-object v0, p0, Lcom/car/systemfunc/NaviHudActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/car/systemfunc/NaviHudActivity;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method getBrightness()I
    .locals 5

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/car/systemfunc/NaviHudActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v3, p0, Lcom/car/systemfunc/NaviHudActivity;->mMaximumBacklight:I

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 175
    .local v0, "value":I
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v9, -0x2

    const/4 v10, 0x0

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const-string v7, "CarSvc_NaviHudActivity"

    const-string v8, "onCreate"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const v7, 0x7f030001

    invoke-virtual {p0, v7}, Lcom/car/systemfunc/NaviHudActivity;->setContentView(I)V

    .line 116
    const/high16 v7, 0x7f0b0000

    invoke-virtual {p0, v7}, Lcom/car/systemfunc/NaviHudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 118
    .local v0, "bg":Landroid/widget/FrameLayout;
    new-instance v2, Ljava/io/File;

    const-string v7, "/system/custom/hud_logo.png"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

#by boba 05.02.2021
#position for logo    
const-string v7, "persist.hudlogo.direction"
invoke-static {v7, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
move-result v1
if-eqz v1, :cond_1

    .line 120
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 121
    .local v3, "iView":Landroid/widget/ImageView;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 122
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

#by boba 05.02.2021
#position for logo
#    .line 123
#    .local v5, "params":Landroid/widget/FrameLayout$LayoutParams;
#    const-string v7, "ro.hudlogo.direction"
#
#    invoke-static {v7, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
#
#    move-result v1

    .line 124
    .local v1, "direction":I
    if-ne v1, v11, :cond_3

    .line 125
    const/16 v7, 0x33

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 134
    :cond_0
    :goto_0
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 135
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 136
    invoke-virtual {v0, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .end local v1    # "direction":I
    .end local v3    # "iView":Landroid/widget/ImageView;
    .end local v5    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const-string v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v7

    iput-object v7, p0, Lcom/car/systemfunc/NaviHudActivity;->mPower:Landroid/os/IPowerManager;

    .line 140
    const-string v7, "power"

    invoke-virtual {p0, v7}, Lcom/car/systemfunc/NaviHudActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 141
    .local v6, "pm":Landroid/os/PowerManager;
    invoke-virtual {v6}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v7

    iput v7, p0, Lcom/car/systemfunc/NaviHudActivity;->mMinimumBacklight:I

    .line 142
    invoke-virtual {v6}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v7

    iput v7, p0, Lcom/car/systemfunc/NaviHudActivity;->mMaximumBacklight:I

#by boba 4.09.2020
#screen off for screen saver
#    .line 144
#    invoke-virtual {p0}, Lcom/car/systemfunc/NaviHudActivity;->getWindow()Landroid/view/Window;
#
#    move-result-object v7
#
#    const/16 v8, 0x80
#
#    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 145
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string v7, "com.car.hud.dismiss"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v7, p0, Lcom/car/systemfunc/NaviHudActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v4}, Lcom/car/systemfunc/NaviHudActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0}, Lcom/car/systemfunc/NaviHudActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03000b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/car/systemfunc/NaviHudActivity;->mToastView:Landroid/widget/TextView;

    .line 151
    new-instance v7, Landroid/widget/Toast;

    invoke-direct {v7, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/car/systemfunc/NaviHudActivity;->mToast:Landroid/widget/Toast;

    .line 152
    iget-object v7, p0, Lcom/car/systemfunc/NaviHudActivity;->mToast:Landroid/widget/Toast;

    iget-object v8, p0, Lcom/car/systemfunc/NaviHudActivity;->mToastView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 153
    iget-object v7, p0, Lcom/car/systemfunc/NaviHudActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v7, v10}, Landroid/widget/Toast;->setDuration(I)V

    .line 154
    iget-object v7, p0, Lcom/car/systemfunc/NaviHudActivity;->mToast:Landroid/widget/Toast;

    const/16 v8, 0x30

    invoke-virtual {v7, v8, v10, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 155
    iget-object v7, p0, Lcom/car/systemfunc/NaviHudActivity;->mToastView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/car/systemfunc/NaviHudActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090033

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const-string v7, "ro.settings.remove"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "brightness"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 162
    :cond_2
    :goto_1
    return-void

    .line 126
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .end local v6    # "pm":Landroid/os/PowerManager;
    .restart local v1    # "direction":I
    .restart local v3    # "iView":Landroid/widget/ImageView;
    .restart local v5    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    const/4 v7, 0x2

    if-ne v1, v7, :cond_4

    .line 127
    const/16 v7, 0x35

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_0

    .line 128
    :cond_4
    const/4 v7, 0x3

    if-ne v1, v7, :cond_5

    .line 129
    const/16 v7, 0x55

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_0

    .line 130
    :cond_5
    const/4 v7, 0x4

    if-ne v1, v7, :cond_6

    .line 131
    const/16 v7, 0x53

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_0

    .line 132
    :cond_6
    const/4 v7, 0x5

    if-ne v1, v7, :cond_0

    .line 133
    const/16 v7, 0x11

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_0

    .line 159
    .end local v1    # "direction":I
    .end local v3    # "iView":Landroid/widget/ImageView;
    .end local v5    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v6    # "pm":Landroid/os/PowerManager;
    :cond_7
    const-string v7, "sys.tp.available"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 160
    iget-object v7, p0, Lcom/car/systemfunc/NaviHudActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 274
    const-string v0, "CarSvc_NaviHudActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 276
    iget-object v0, p0, Lcom/car/systemfunc/NaviHudActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/NaviHudActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 277
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 200
    const-string v0, "CarSvc_NaviHudActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 202
    iget-object v0, p0, Lcom/car/systemfunc/NaviHudActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 203
    iget-object v0, p0, Lcom/car/systemfunc/NaviHudActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.hud.dismiss"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/NaviHudActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 205
    iget-boolean v0, p0, Lcom/car/systemfunc/NaviHudActivity;->mFinishedNow:Z

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/systemfunc/NaviHudActivity;->mFinishedNow:Z

#by boba 02.10.2020
#no close navihud on pause
#    .line 208
#    invoke-virtual {p0}, Lcom/car/systemfunc/NaviHudActivity;->finish()V

    .line 210
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 265
    const-string v0, "CarSvc_NaviHudActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 268
    iget-object v0, p0, Lcom/car/systemfunc/NaviHudActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0xbb8

#by boba 02.03.2020
#fast fullscreen
#    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/systemfunc/NaviHudActivity;->mFinishedNow:Z

    .line 270
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_1

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/car/systemfunc/NaviHudActivity;->mDownX:F

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lcom/car/systemfunc/NaviHudActivity;->mDownY:F

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/car/systemfunc/NaviHudActivity;->mFirstDownX:F

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/car/systemfunc/NaviHudActivity;->mLastDownTime:J

    .line 260
    :cond_0
    :goto_0
    const/4 v9, 0x1

    :goto_1
    return v9

    .line 219
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 221
    const-string v9, "ro.settings.remove"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "brightness"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 222
    const/4 v9, 0x1

    goto :goto_1

    .line 225
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 227
    .local v0, "curUpTime":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 228
    .local v3, "curX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 229
    .local v4, "curY":F
    iget v9, p0, Lcom/car/systemfunc/NaviHudActivity;->mDownX:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/car/systemfunc/NaviHudActivity;->mDownY:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_0

    .line 230
    iget v9, p0, Lcom/car/systemfunc/NaviHudActivity;->mDownY:F

    sub-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x41f00000    # 30.0f

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_0

    .line 231
    iget v9, p0, Lcom/car/systemfunc/NaviHudActivity;->mDownX:F

    sub-float v9, v3, v9

    float-to-int v8, v9

    .line 232
    .local v8, "steps":I
    invoke-virtual {p0}, Lcom/car/systemfunc/NaviHudActivity;->getBrightness()I

    move-result v9

    add-int v2, v9, v8

    .line 233
    .local v2, "curVal":I
    iget v9, p0, Lcom/car/systemfunc/NaviHudActivity;->mMaximumBacklight:I

    if-lt v2, v9, :cond_4

    iget v2, p0, Lcom/car/systemfunc/NaviHudActivity;->mMaximumBacklight:I

    .line 235
    :cond_3
    :goto_2
    invoke-direct {p0, v2}, Lcom/car/systemfunc/NaviHudActivity;->setBrightness(I)V

    .line 236
    invoke-virtual {p0}, Lcom/car/systemfunc/NaviHudActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "screen_brightness"

    const/4 v11, -0x2

    invoke-static {v9, v10, v2, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 239
    iput v3, p0, Lcom/car/systemfunc/NaviHudActivity;->mDownX:F

    .line 240
    iput v4, p0, Lcom/car/systemfunc/NaviHudActivity;->mDownY:F

    .line 241
    iget v9, p0, Lcom/car/systemfunc/NaviHudActivity;->mMinimumBacklight:I

    sub-int v9, v2, v9

    mul-int/lit8 v9, v9, 0x64

    iget v10, p0, Lcom/car/systemfunc/NaviHudActivity;->mMaximumBacklight:I

    iget v11, p0, Lcom/car/systemfunc/NaviHudActivity;->mMinimumBacklight:I

    sub-int/2addr v10, v11

    div-int v6, v9, v10

    .line 242
    .local v6, "percent":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/100"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 244
    .local v7, "prompt":Ljava/lang/String;
    iget-object v9, p0, Lcom/car/systemfunc/NaviHudActivity;->mToastView:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v9, p0, Lcom/car/systemfunc/NaviHudActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 234
    .end local v6    # "percent":I
    .end local v7    # "prompt":Ljava/lang/String;
    :cond_4
    iget v9, p0, Lcom/car/systemfunc/NaviHudActivity;->mMinimumBacklight:I

    if-gt v2, v9, :cond_3

    iget v2, p0, Lcom/car/systemfunc/NaviHudActivity;->mMinimumBacklight:I

    goto :goto_2

    .line 248
    .end local v0    # "curUpTime":J
    .end local v2    # "curVal":I
    .end local v3    # "curX":F
    .end local v4    # "curY":F
    .end local v8    # "steps":I
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 250
    .restart local v3    # "curX":F
    const/high16 v9, -0x40800000    # -1.0f

    iput v9, p0, Lcom/car/systemfunc/NaviHudActivity;->mDownX:F

    .line 251
    const/high16 v9, -0x40800000    # -1.0f

    iput v9, p0, Lcom/car/systemfunc/NaviHudActivity;->mDownY:F

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 253
    .restart local v0    # "curUpTime":J
    iget-wide v10, p0, Lcom/car/systemfunc/NaviHudActivity;->mLastDownTime:J

    sub-long v10, v0, v10

    const-wide/16 v12, 0x1f4

    cmp-long v9, v10, v12

    if-gtz v9, :cond_0

    iget v9, p0, Lcom/car/systemfunc/NaviHudActivity;->mFirstDownX:F

    sub-float v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x41200000    # 10.0f

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_0

    .line 254
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.car.hud.show"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v5, "i":Landroid/content/Intent;
    const-string v9, "show"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v5}, Lcom/car/systemfunc/NaviHudActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 257
    iget-object v9, p0, Lcom/car/systemfunc/NaviHudActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->cancel()V

    goto/16 :goto_0
.end method

.method public setFullscreen()V
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/car/systemfunc/NaviHudActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 182
    .local v0, "newUiOptions":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 183
    or-int/lit8 v0, v0, 0x2

    .line 187
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 188
    or-int/lit8 v0, v0, 0x4

    .line 191
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 192
    or-int/lit16 v0, v0, 0x1000

    .line 195
    :cond_2
    invoke-virtual {p0}, Lcom/car/systemfunc/NaviHudActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 196
    return-void
.end method
