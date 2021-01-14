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

    .prologue
    .line 124
    iput-object p1, p0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 128
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    const/16 v22, 0x64

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/car/systemfunc/NaviChangeReceiver;->dismissNaviHud()V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    const/16 v22, 0x65

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 131
    new-instance v10, Landroid/content/Intent;

    const-string v21, "com.car.hud.show"

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v10, "i":Landroid/content/Intent;
    const-string v21, "show"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 134
    .end local v10    # "i":Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    const/16 v22, 0x66

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 135
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

    .line 136
    new-instance v10, Landroid/content/Intent;

    const-string v21, "com.car.hud.show"

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .restart local v10    # "i":Landroid/content/Intent;
    const-string v21, "show"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 140
    new-instance v11, Landroid/content/Intent;

    const-string v21, "android.intent.action.LAUNCHGPS"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v11, "intent":Landroid/content/Intent;
    const/high16 v21, 0x10000000

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 156
    .end local v10    # "i":Landroid/content/Intent;
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    const/16 v22, 0x67

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 157
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

    .line 158
    .local v5, "currentTime":Ljava/lang/String;
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

    .line 160
    const/16 v21, 0x67

    const-wide/16 v22, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/systemfunc/NaviChangeReceiver$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 161
    .end local v5    # "currentTime":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    const/16 v22, 0x68

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 162
    const-string v21, "sys.current.gpsinfo"

    const-string v22, ""

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, "gpsInfo":Ljava/lang/String;
    const-string v21, ":"

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    .line 165
    .local v12, "items":[Ljava/lang/String;
    if-eqz v12, :cond_b

    array-length v0, v12

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 166
    const/4 v8, 0x0

    .local v8, "east":Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, "west":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "south":Ljava/lang/String;
    const/4 v14, 0x0

    .line 167
    .local v14, "north":Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v21, v12, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 168
    .local v13, "lastCombine":I
    const v21, 0xffff

    and-int v21, v21, v13

    ushr-int/lit8 v4, v21, 0x7

    .line 169
    .local v4, "angle":I
    rem-int/lit16 v7, v4, 0x168

    .line 170
    .local v7, "direction":I
    and-int/lit8 v17, v13, 0x7f

    .line 171
    .local v17, "speed":I
    const-string v6, ""

    .line 172
    .local v6, "dirStr":Ljava/lang/String;
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

    .line 173
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

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f090038

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 179
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

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f09003a

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 184
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mIsChinese:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    .line 185
    if-eqz v8, :cond_7

    .line 186
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

    .line 188
    :cond_7
    if-eqz v20, :cond_8

    .line 189
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

    .line 191
    :cond_8
    if-eqz v16, :cond_9

    .line 192
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

    .line 194
    :cond_9
    if-eqz v14, :cond_a

    .line 195
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

    .line 211
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

    .line 214
    .end local v4    # "angle":I
    .end local v6    # "dirStr":Ljava/lang/String;
    .end local v7    # "direction":I
    .end local v8    # "east":Ljava/lang/String;
    .end local v13    # "lastCombine":I
    .end local v14    # "north":Ljava/lang/String;
    .end local v16    # "south":Ljava/lang/String;
    .end local v17    # "speed":I
    .end local v20    # "west":Ljava/lang/String;
    :cond_b
    const/16 v21, 0x68

    const-wide/16 v22, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/systemfunc/NaviChangeReceiver$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 175
    .restart local v4    # "angle":I
    .restart local v6    # "dirStr":Ljava/lang/String;
    .restart local v7    # "direction":I
    .restart local v8    # "east":Ljava/lang/String;
    .restart local v13    # "lastCombine":I
    .restart local v14    # "north":Ljava/lang/String;
    .restart local v16    # "south":Ljava/lang/String;
    .restart local v17    # "speed":I
    .restart local v20    # "west":Ljava/lang/String;
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

    .line 176
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

    .line 181
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

    .line 182
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

    .line 198
    :cond_f
    if-eqz v16, :cond_10

    .line 199
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

    .line 201
    :cond_10
    if-eqz v14, :cond_11

    .line 202
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

    .line 204
    :cond_11
    if-eqz v8, :cond_12

    .line 205
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

    .line 207
    :cond_12
    if-eqz v20, :cond_a

    .line 208
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

    .line 215
    .end local v4    # "angle":I
    .end local v6    # "dirStr":Ljava/lang/String;
    .end local v7    # "direction":I
    .end local v8    # "east":Ljava/lang/String;
    .end local v9    # "gpsInfo":Ljava/lang/String;
    .end local v12    # "items":[Ljava/lang/String;
    .end local v13    # "lastCombine":I
    .end local v14    # "north":Ljava/lang/String;
    .end local v16    # "south":Ljava/lang/String;
    .end local v17    # "speed":I
    .end local v20    # "west":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    const/16 v22, 0x69

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    .line 216
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

    .line 217
    .local v18, "userTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mLastUserTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-nez v21, :cond_15

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/car/systemfunc/NaviChangeReceiver;->mLastUserTime:J

    .line 219
    const/16 v21, 0x6a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/NaviChangeReceiver$1;->removeMessages(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/car/common/ProviderUtils;->getScreenSaveTime(Landroid/content/Context;)I

    move-result v21

    if-lez v21, :cond_14

    .line 221
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

    .line 230
    :cond_14
    :goto_4
    const/16 v21, 0x69

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/NaviChangeReceiver$1;->removeMessages(I)V

    .line 231
    const/16 v21, 0x69

    const-wide/16 v22, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/systemfunc/NaviChangeReceiver$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 223
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mLastUserTime:J

    move-wide/from16 v22, v0

    cmp-long v21, v18, v22

    if-eqz v21, :cond_14

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/car/systemfunc/NaviChangeReceiver;->mLastUserTime:J

    .line 225
    const/16 v21, 0x6a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/NaviChangeReceiver$1;->removeMessages(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/car/common/ProviderUtils;->getScreenSaveTime(Landroid/content/Context;)I

    move-result v21

    if-lez v21, :cond_14

    .line 227
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

    .line 232
    .end local v18    # "userTime":J
    :cond_16
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    const/16 v22, 0x6a

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 233
    const/16 v21, 0x6a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/NaviChangeReceiver$1;->removeMessages(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/car/common/ProviderUtils;->getScreenSaveTime(Landroid/content/Context;)I

    move-result v21

    if-eqz v21, :cond_0

    .line 235
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

    .line 236
    .restart local v18    # "userTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$1;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mLastUserTime:J

    move-wide/from16 v22, v0

    cmp-long v21, v18, v22

    if-nez v21, :cond_0

    .line 239
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

    .line 240
    .local v15, "powerManager":Landroid/os/PowerManager;
    const-string v21, "ro.hud.enable"

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 241
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

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    const/16 v21, 0x4

    const/16 v24, 0x0

    move-wide/from16 v0, v22

    move/from16 v2, v21

    move/from16 v3, v24

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto/16 :goto_0

    .line 245
    :cond_17
    invoke-virtual {v15}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-virtual {v15}, Landroid/os/PowerManager;->hasScreenWakeLock()Z

    move-result v21

    if-nez v21, :cond_0

    .line 246
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
