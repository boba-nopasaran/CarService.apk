.class Lcom/car/ServiceApplication$5;
.super Ljava/lang/Object;
.source "ServiceApplication.java"

# interfaces
.implements Lcom/aispeech/aios/sdk/listener/AIOSAudioListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/ServiceApplication;->speechInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/ServiceApplication;


# direct methods
.method constructor <init>(Lcom/car/ServiceApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/car/ServiceApplication$5;->this$0:Lcom/car/ServiceApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMute()V
    .locals 0

    return-void
.end method

.method public onUnMute()V
    .locals 0

    return-void
.end method
