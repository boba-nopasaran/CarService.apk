.class public Lcom/car/httpserver/WebAdmin;
.super Ljava/lang/Object;
.source "WebAdmin.java"


# static fields
.field private static final JsonType:Ljava/lang/String; = "application/json"

.field public static final TAG:Ljava/lang/String; = "CarSvc_WebAdmin"

.field private static final rootFolder:Ljava/lang/String; = "/system/custom/"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPwd:Ljava/lang/String;

.field private mServer:Lcom/car/httpserver/CarHttpServer;

.field private mSoftAPName:Ljava/lang/String;

.field private mSoftAPPwd:Ljava/lang/String;

.field private mUser:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/car/httpserver/CarHttpServer;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/car/httpserver/WebAdmin;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/car/httpserver/WebAdmin;->mServer:Lcom/car/httpserver/CarHttpServer;

    iget-object v0, p0, Lcom/car/httpserver/WebAdmin;->mContext:Landroid/content/Context;

    const-string v1, "webadmin"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "user"

    const-string v2, "admin"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/httpserver/WebAdmin;->mUser:Ljava/lang/String;

    iget-object v0, p0, Lcom/car/httpserver/WebAdmin;->mContext:Landroid/content/Context;

    const-string v1, "webadmin"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pwd"

    const-string v2, "admin"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/httpserver/WebAdmin;->mPwd:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/car/httpserver/WebAdmin;->mSoftAPName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/car/httpserver/WebAdmin;->mSoftAPPwd:Ljava/lang/String;

    return-void
.end method

.method static hasValue(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method handleWebAdmin(Lcom/car/httpserver/NanoHTTPD$IHTTPSession;Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/car/httpserver/NanoHTTPD$IHTTPSession;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/car/httpserver/NanoHTTPD$Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v22, "func"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_3

    invoke-interface/range {p1 .. p1}, Lcom/car/httpserver/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v18

    new-instance v7, Ljava/io/File;

    const-string v22, "/system/custom/"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "CarSvc_WebAdmin"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "webadmin static page, uri="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",path="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v22

    if-nez v22, :cond_1

    :cond_0
    new-instance v7, Ljava/io/File;

    const-string v22, "/system/custom/"

    const-string v23, "webadmin/index.html"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "CarSvc_WebAdmin"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " not exist, using default html"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/car/httpserver/CarHttpServer;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/httpserver/WebAdmin;->mServer:Lcom/car/httpserver/CarHttpServer;

    move-object/from16 v22, v0

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {p1 .. p1}, Lcom/car/httpserver/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/car/httpserver/CarHttpServer;->serveFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v14

    :goto_0
    return-object v14

    :cond_2
    const-string v22, "CarSvc_WebAdmin"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " not found"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/httpserver/WebAdmin;->mServer:Lcom/car/httpserver/CarHttpServer;

    move-object/from16 v22, v0

    sget-object v23, Lcom/car/httpserver/NanoHTTPD$Response$Status;->NOT_FOUND:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v24, "text/plain"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "<h1>"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " not found</h1>"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v22 .. v25}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v14

    goto :goto_0

    :cond_3
    const-string v22, "login"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    const-string v22, "user"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v22, "pwd"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/httpserver/WebAdmin;->mUser:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/httpserver/WebAdmin;->mPwd:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const/4 v15, 0x0

    :goto_1
    const-string v22, "ret"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v22, "CarSvc_WebAdmin"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "login return "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/httpserver/WebAdmin;->mServer:Lcom/car/httpserver/CarHttpServer;

    move-object/from16 v22, v0

    sget-object v23, Lcom/car/httpserver/NanoHTTPD$Response$Status;->OK:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v24, "application/json"

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v22 .. v25}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v14

    goto/16 :goto_0

    :cond_4
    const/4 v15, -0x1

    goto :goto_1

    :cond_5
    const-string v22, "set"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const/4 v15, 0x0

    const-string v22, "user"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v22, "pwd"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Lcom/car/httpserver/WebAdmin;->hasValue(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/httpserver/WebAdmin;->mUser:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/httpserver/WebAdmin;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "webadmin"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "user"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/httpserver/WebAdmin;->mUser:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    invoke-static {v13}, Lcom/car/httpserver/WebAdmin;->hasValue(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/car/httpserver/WebAdmin;->mPwd:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/httpserver/WebAdmin;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "webadmin"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "pwd"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/httpserver/WebAdmin;->mPwd:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    const-string v22, "key1"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v22, "key2"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4}, Lcom/car/httpserver/WebAdmin;->hasValue(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-static {v5}, Lcom/car/httpserver/WebAdmin;->hasValue(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    const/4 v15, -0x1

    :cond_8
    :goto_2
    const-string v22, "start"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const-string v22, "end"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Lcom/car/httpserver/WebAdmin;->hasValue(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-static {v6}, Lcom/car/httpserver/WebAdmin;->hasValue(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    new-instance v9, Landroid/content/Intent;

    const-string v22, "com.car.iprange"

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v22, "iprange"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/httpserver/WebAdmin;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_9
    const-string v22, "ret"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v22, "CarSvc_WebAdmin"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "set return "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/httpserver/WebAdmin;->mServer:Lcom/car/httpserver/CarHttpServer;

    move-object/from16 v22, v0

    sget-object v23, Lcom/car/httpserver/NanoHTTPD$Response$Status;->OK:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v24, "application/json"

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v22 .. v25}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v14

    goto/16 :goto_0

    :cond_a
    const-string v22, "CarSvc_WebAdmin"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "change ap, name="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",ap pwd="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/content/Intent;

    const-string v22, "com.car.apconfig"

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v22, "ssid"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v22, "pwd"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/httpserver/WebAdmin;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/car/httpserver/WebAdmin;->mSoftAPName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/car/httpserver/WebAdmin;->mSoftAPPwd:Ljava/lang/String;

    goto/16 :goto_2

    :cond_b
    const-string v22, "get"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string v22, "user"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/httpserver/WebAdmin;->mUser:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v22, "pwd"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/httpserver/WebAdmin;->mPwd:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/httpserver/WebAdmin;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "wifi"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/httpserver/WebAdmin;->mSoftAPName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/httpserver/WebAdmin;->mSoftAPPwd:Ljava/lang/String;

    const-string v22, "key1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/httpserver/WebAdmin;->mSoftAPName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v22, "key2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/httpserver/WebAdmin;->mSoftAPPwd:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v22, "persist.softap.iprange"

    const-string v23, "192.168.43.2,192.168.43.254"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v22, ","

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v0, v11

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    const-string v22, "start"

    const/16 v23, 0x0

    aget-object v23, v11, v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v22, "end"

    const/16 v23, 0x1

    aget-object v23, v11, v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    const-string v22, "ret"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/httpserver/WebAdmin;->mServer:Lcom/car/httpserver/CarHttpServer;

    move-object/from16 v22, v0

    sget-object v23, Lcom/car/httpserver/NanoHTTPD$Response$Status;->OK:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v24, "application/json"

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v22 .. v25}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v14

    goto/16 :goto_0

    :cond_d
    const-string v22, "CarSvc_WebAdmin"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "return 404 for unknown func:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/httpserver/WebAdmin;->mServer:Lcom/car/httpserver/CarHttpServer;

    move-object/from16 v22, v0

    sget-object v23, Lcom/car/httpserver/NanoHTTPD$Response$Status;->NOT_FOUND:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v24, "text/plain"

    const-string v25, ""

    invoke-virtual/range {v22 .. v25}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v14

    goto/16 :goto_0
.end method
