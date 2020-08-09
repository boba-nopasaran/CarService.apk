.class final Lcom/car/systemfunc/PowerConnectionReceiver$1;
.super Ljava/util/ArrayList;
.source "PowerConnectionReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/PowerConnectionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "ro.kaola.fujian"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.edog.car"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "cn.kuwo.kwmusiccar"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.tencent.qqmusiccar"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.process.media"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.process.acore"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.systemui"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.deskclock"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.calendar"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.providers.calendar"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.bluetooth"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.phone"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.inputmethod.latin"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.car.dvr"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.car.cloud"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.car.jt808service"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.car.carservice"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.car.btphone"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.car.btspeaker"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.car.fmstation"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.externalstorage"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.contacts"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.iflytek.tts"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.car.addons"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "system:ui"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.printspooler"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.smspush"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "system"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "media"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.jwd.jwdabout"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
