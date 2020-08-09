.class public Lcom/car/cloud/CloudMsgDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CloudMsgDatabaseHelper.java"


# static fields
.field protected static final DB_NAME:Ljava/lang/String; = "cloudmsg.db"

.field private static final DB_VERSION:I = 0x5

.field public static final DEVICE_BONDUPDATETIME:Ljava/lang/String; = "f_bondupdatetime"

.field public static final DEVICE_FIRMWARE:Ljava/lang/String; = "f_firmware"

.field public static final DEVICE_MANUFACTURER:Ljava/lang/String; = "f_manufacturer"

.field public static final DEVICE_MODULETYPE:Ljava/lang/String; = "f_moduletype"

.field public static final DEVICE_NICKNAME:Ljava/lang/String; = "f_nickname"

.field public static final DEVICE_SERIALNUM:Ljava/lang/String; = "f_serialnum"

.field public static final DEVICE_STATUS:Ljava/lang/String; = "f_status"

.field public static final DEVICE_TABLE:Ljava/lang/String; = "t_device"

.field public static final MSG_CONTENT:Ljava/lang/String; = "f_content"

.field public static final MSG_DOWNLOAD:Ljava/lang/String; = "f_download"

.field public static final MSG_FROM:Ljava/lang/String; = "f_from"

.field public static final MSG_ID:Ljava/lang/String; = "_id"

.field public static final MSG_INDEX:Ljava/lang/String; = "f_msgindex"

.field public static final MSG_SENDTIME:Ljava/lang/String; = "f_sendtime"

.field public static final MSG_SEND_DONE:I = 0x0

.field public static final MSG_SEND_FAILED:I = -0x1

.field public static final MSG_SEND_ING:I = 0x1

.field public static final MSG_SENTDONE:Ljava/lang/String; = "f_sentdone"

.field public static final MSG_TABLE:Ljava/lang/String; = "t_msg"

.field public static final MSG_TO:Ljava/lang/String; = "f_to"

.field public static final MSG_TYPE:Ljava/lang/String; = "f_msgtype"

.field public static final MSG_TYPE_ALARM:Ljava/lang/String; = "alarm"

.field public static final MSG_TYPE_APPOINTMENT:Ljava/lang/String; = "appointment"

.field public static final MSG_TYPE_GPS:Ljava/lang/String; = "gps"

.field public static final MSG_TYPE_NOTICE:Ljava/lang/String; = "notice"

.field public static final MSG_TYPE_PICKUP:Ljava/lang/String; = "pickup"

.field public static final MSG_TYPE_SETPROP:Ljava/lang/String; = "setprop"

.field public static final MSG_TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final USER_BONDUPDATETIME:Ljava/lang/String; = "f_bondupdatetime"

.field public static final USER_HEADIMAGEURL:Ljava/lang/String; = "f_headimageurl"

.field public static final USER_NICKNAME:Ljava/lang/String; = "f_nickname"

.field public static final USER_STATUS:Ljava/lang/String; = "f_status"

.field public static final USER_TABLE:Ljava/lang/String; = "t_user"

.field public static final USER_UNIONID:Ljava/lang/String; = "f_unionid"


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "cloudmsg.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "CloudMsgDatabaseHelper"

    iput-object v0, p0, Lcom/car/cloud/CloudMsgDatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE t_msg (_id INTEGER PRIMARY KEY,f_msgindex INTEGER DEFAULT -1,f_from TEXT,f_to TEXT,f_sendtime INTEGER,f_msgtype TEXT,f_content TEXT,f_download TEXT,f_sentdone INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE t_device (f_serialnum TEXT PRIMARY KEY,f_status INTEGER,f_nickname TEXT,f_moduletype TEXT,f_manufacturer TEXT,f_firmware TEXT,f_bondupdatetime TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE t_user (f_unionid TEXT PRIMARY KEY,f_status INTEGER,f_nickname TEXT,f_headimageurl TEXT,f_bondupdatetime TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const-string v0, "CloudMsgDatabaseHelper"

    const-string v1, "onUpgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DROP TABLE IF EXISTS t_msg"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS t_device"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS t_user"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/car/cloud/CloudMsgDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
