.class Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;
.super Ljava/lang/Object;
.source "TASMusicManager.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/CallbackExecutor$ICallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/sdk/TASMusicManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 14

    iget-object v11, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object v11

    if-nez v11, :cond_0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "handlerMusicFocus return, mIMusicClient == null"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_0
    return-object v11

    :cond_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "+callback, caller:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " ,callback:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " ,data:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez p3, :cond_2

    const-string v11, "null"

    :goto_1
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "tas.focus.music.open"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v8, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "e_music_media_source"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_2
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==+openApp"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object v11

    invoke-interface {v11, v8}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->openApp(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==-openApp"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_3
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "-callback, caller:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " ,callback:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " ,data:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez p3, :cond_e

    const-string v11, "null"

    :goto_4
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_2
    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_1

    :catch_0
    move-exception v5

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v11, "tas.focus.music.close"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v8, 0x0

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "e_music_media_source"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    :goto_5
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==+closeApp"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object v11

    invoke-interface {v11, v8}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->closeApp(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==-closeApp"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_1
    move-exception v5

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    const-string v11, "tas.focus.music.play"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==+play"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object v11

    invoke-interface {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->play()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==-play"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    const-string v11, "tas.focus.music.pause"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==+pause"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object v11

    invoke-interface {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->pause()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==-pause"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    const-string v11, "tas.focus.music.next"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==+next"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object v11

    invoke-interface {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->next()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==-next"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    const-string v11, "tas.focus.music.pre"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==+pre"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object v11

    invoke-interface {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->pre()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==-pre"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    const-string v11, "tas.focus.music.is.playmode.supported"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v10, 0x1

    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "e_music_playmode"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v10

    :goto_6
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==+isPlayModeSupported"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object v11

    invoke-interface {v11, v10}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->isPlayModeSupported(I)Z

    move-result v6

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==-isPlayModeSupported"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    const-string v11, "e_music_is_playmode_supported"

    invoke-virtual {v7, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_7
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    goto/16 :goto_0

    :catch_2
    move-exception v5

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_3
    move-exception v4

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    const-string v11, "tas.focus.music.playmode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v10, 0x1

    :try_start_4
    new-instance v3, Lorg/json/JSONObject;

    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "e_music_playmode"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v10

    :goto_8
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==+playmode"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object v11

    invoke-interface {v11, v10}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->setPlayMode(I)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==-playmode"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_4
    move-exception v5

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    const-string v11, "tas.focus.music.get.play.status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==+getPlayStatus"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object v11

    invoke-interface {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->getPlayStatus()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==-getPlayStatus"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    const-string v11, "tas.focus.music.get.list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==+getSongList"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object v11

    invoke-interface {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->getSongList()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==-getSongList"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    const-string v11, "tas.focus.music.current.info"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==+getCurrentMusic"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object v11

    invoke-interface {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->getCurrentMusic()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "==-getCurrentMusic"

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    const-string v11, "tas.focus.music.play.music"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_5
    new-instance v3, Lorg/json/JSONObject;

    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "e_music_name"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "e_music_artist"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "e_music_album"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v1

    :goto_9
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "==+playSong, name:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ,artist:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ,album:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v11}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object v11

    invoke-interface {v11, v9, v2, v1}, Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;->playSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "==-playSong, name:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ,artist:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ,album:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_5
    move-exception v5

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_e
    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_4
.end method

.method public onSdkServiceConnectEvent(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onSdkServiceConnectEvent, connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$100(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Lcom/tencent/wecarspeech/sdk/TASMusicManager$IMusicClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const-string v1, "tas.action.music.set.enabled"

    new-array v2, v3, [B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->action(Ljava/lang/String;[B)[B

    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$200(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-virtual {v0, v4}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->notifyA2dpStatus(Z)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v0, v3}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$202(Lcom/tencent/wecarspeech/sdk/TASMusicManager;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$300(Lcom/tencent/wecarspeech/sdk/TASMusicManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-virtual {v0, v4}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->notifyUSBStatus(Z)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASMusicManager$1;->this$0:Lcom/tencent/wecarspeech/sdk/TASMusicManager;

    invoke-static {v0, v3}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$302(Lcom/tencent/wecarspeech/sdk/TASMusicManager;Z)Z

    :cond_2
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASMusicManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-onSdkServiceConnectEvent, connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
