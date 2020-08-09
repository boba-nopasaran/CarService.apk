.class Lcom/car/systemfunc/NaviChangeReceiver$1;
.super Landroid/os/Handler;
.source "NaviChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/NaviChangeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/NaviChangeReceiver;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/NaviChangeReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    const/16 v22, 0x64

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/car/systemfunc/NaviChangeReceiver;->dismissNaviHud()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    const/16 v22, 0x65

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    new-instance v10, Landroid/content/Intent;

    const-string v21, "com.car.hud.show"

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v21, "show"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    const/16 v22, 0x66

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/car/systemfunc/NaviChangeReceiver;->isNaviHudVisible()Z

    move-result v21

    if-eqz v21, :cond_0

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/NaviChangeReceiver$1;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_0

    new-instance v10, Landroid/content/Intent;

    const-string v21, "com.car.hud.show"

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v21, "show"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v11, Landroid/content/Intent;

    const-string v21, "android.intent.action.LAUNCHGPS"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v21, 0x10000000

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    const/16 v22, 0x67

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/car/systemfunc/NaviChangeReceiver;->access$000(Lcom/car/systemfunc/NaviChangeReceiver;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mTime:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v21, 0x67

    const-wide/16 v22, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/systemfunc/NaviChangeReceiver$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    const/16 v22, 0x68

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    const-string v21, "sys.current.gpsinfo"

    const-string v22, ""

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v21, ":"

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_b

    array-length v0, v12

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    const/4 v8, 0x0

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x2

    aget-object v21, v12, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const v21, 0xffff

    and-int v21, v21, v13

    ushr-int/lit8 v4, v21, 0x7

    rem-int/lit16 v7, v4, 0x168

    and-int/lit8 v17, v13, 0x7f

    const-string v6, ""

    const-string v21, "CarSvc_NaviChangeReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "cur direction is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v0, v7

    move/from16 v21, v0

    const/high16 v22, 0x41b40000    # 22.5f

    cmpl-float v21, v21, v22

    if-lez v21, :cond_c

    int-to-float v0, v7

    move/from16 v21, v0

    const v22, 0x431d8000    # 157.5f

    cmpg-float v21, v21, v22

    if-gez v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f090038

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_5
    :goto_1
    int-to-float v0, v7

    move/from16 v21, v0

    const/high16 v22, 0x42e10000    # 112.5f

    cmpl-float v21, v21, v22

    if-lez v21, :cond_d

    int-to-float v0, v7

    move/from16 v21, v0

    const v22, 0x43778000    # 247.5f

    cmpg-float v21, v21, v22

    if-gez v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f09003a

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mIsChinese:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    if-eqz v8, :cond_7

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_7
    if-eqz v20, :cond_8

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_8
    if-eqz v16, :cond_9

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_9
    if-eqz v14, :cond_a

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDir:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    const/16 v21, 0x68

    const-wide/16 v22, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/systemfunc/NaviChangeReceiver$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_c
    int-to-float v0, v7

    move/from16 v21, v0

    const v22, 0x434a8000    # 202.5f

    cmpl-float v21, v21, v22

    if-lez v21, :cond_5

    int-to-float v0, v7

    move/from16 v21, v0

    const v22, 0x43a8c000    # 337.5f

    cmpg-float v21, v21, v22

    if-gez v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f090039

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_1

    :cond_d
    int-to-double v0, v7

    move-wide/from16 v22, v0

    const-wide v24, 0x4050e00000000000L    # 67.5

    cmpg-double v21, v22, v24

    if-ltz v21, :cond_e

    int-to-float v0, v7

    move/from16 v21, v0

    const v22, 0x43924000    # 292.5f

    cmpl-float v21, v21, v22

    if-lez v21, :cond_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f09003b

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    :cond_f
    if-eqz v16, :cond_10

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_10
    if-eqz v14, :cond_11

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_11
    if-eqz v8, :cond_12

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_12
    if-eqz v20, :cond_a

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    const/16 v22, 0x69

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/car/systemfunc/NaviChangeReceiver;->access$100(Lcom/car/systemfunc/NaviChangeReceiver;Landroid/content/Context;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mLastUserTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-nez v21, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/car/systemfunc/NaviChangeReceiver;->mLastUserTime:J

    const/16 v21, 0x6a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/NaviChangeReceiver$1;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/car/common/ProviderUtils;->getScreenSaveTime(Landroid/content/Context;)I

    move-result v21

    if-lez v21, :cond_14

    const/16 v21, 0x6a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/car/common/ProviderUtils;->getScreenSaveTime(Landroid/content/Context;)I

    move-result v22

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/systemfunc/NaviChangeReceiver$1;->sendEmptyMessageDelayed(IJ)Z

    :cond_14
    :goto_4
    const/16 v21, 0x69

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/NaviChangeReceiver$1;->removeMessages(I)V

    const/16 v21, 0x69

    const-wide/16 v22, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/systemfunc/NaviChangeReceiver$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mLastUserTime:J

    move-wide/from16 v22, v0

    cmp-long v21, v18, v22

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/car/systemfunc/NaviChangeReceiver;->mLastUserTime:J

    const/16 v21, 0x6a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/NaviChangeReceiver$1;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/car/common/ProviderUtils;->getScreenSaveTime(Landroid/content/Context;)I

    move-result v21

    if-lez v21, :cond_14

    const/16 v21, 0x6a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/car/common/ProviderUtils;->getScreenSaveTime(Landroid/content/Context;)I

    move-result v22

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/systemfunc/NaviChangeReceiver$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    :cond_16
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    const/16 v22, 0x6a

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    const/16 v21, 0x6a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/NaviChangeReceiver$1;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/car/common/ProviderUtils;->getScreenSaveTime(Landroid/content/Context;)I

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/car/systemfunc/NaviChangeReceiver;->access$100(Lcom/car/systemfunc/NaviChangeReceiver;Landroid/content/Context;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mLastUserTime:J

    move-wide/from16 v22, v0

    cmp-long v21, v18, v22

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "power"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PowerManager;

    const-string v21, "ro.hud.enable"

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-virtual {v15}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v21

    if-eqz v21, :cond_0

    const-string v21, "persist.sys.hud.show"

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    if-nez v21, :cond_0

    invoke-virtual {v15}, Landroid/os/PowerManager;->hasScreenWakeLock()Z

    move-result v21

    if-nez v21, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    const/16 v21, 0x4

    const/16 v24, 0x0

    move-wide/from16 v0, v22

    move/from16 v2, v21

    move/from16 v3, v24

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v15}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-virtual {v15}, Landroid/os/PowerManager;->hasScreenWakeLock()Z

    move-result v21

    if-nez v21, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    const/16 v21, 0x4

    const/16 v24, 0x0

    move-wide/from16 v0, v22

    move/from16 v2, v21

    move/from16 v3, v24

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto/16 :goto_0
.end method
