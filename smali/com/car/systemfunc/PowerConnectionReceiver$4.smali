.class Lcom/car/systemfunc/PowerConnectionReceiver$4;
.super Ljava/lang/Object;
.source "PowerConnectionReceiver.java"

# interfaces
.implements Lcom/hongfans/carmedia/OnPlayChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/PowerConnectionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/PowerConnectionReceiver;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/PowerConnectionReceiver$4;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPlayListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hongfans/rearview/services/api/ProgramDigtalModel;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public OnPlayMusicChanged(Lcom/hongfans/rearview/services/api/ProgramDigtalModel;)V
    .locals 0

    return-void
.end method

.method public OnPlayStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver$4;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    iput p1, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mCybState:I

    return-void
.end method
