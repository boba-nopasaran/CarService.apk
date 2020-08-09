.class Lcom/car/systemfunc/PowerConnectionReceiver$6;
.super Ljava/util/ArrayList;
.source "PowerConnectionReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/PowerConnectionReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/PowerConnectionReceiver;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V
    .locals 1

    iput-object p1, p0, Lcom/car/systemfunc/PowerConnectionReceiver$6;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.txznet.txz"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$6;->add(Ljava/lang/Object;)Z

    const-string v0, "com.txznet.music"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$6;->add(Ljava/lang/Object;)Z

    const-string v0, "cn.kuwo.kwmusiccar"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$6;->add(Ljava/lang/Object;)Z

    const-string v0, "com.aispeech.aios"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver$6;->add(Ljava/lang/Object;)Z

    return-void
.end method
