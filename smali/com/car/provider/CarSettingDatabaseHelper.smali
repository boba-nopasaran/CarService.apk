.class public Lcom/car/provider/CarSettingDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CarSettingDatabaseHelper.java"


# static fields
.field public static final AUTOSLEEP_TIME:Ljava/lang/String; = "autosleeptime"

.field public static final AUTO_CLEAR:Ljava/lang/String; = "autoclear"

.field public static final BT_KEYBOARD_ENABLE:Ljava/lang/String; = "bt_keyboard_enable"

.field protected static final DB_NAME:Ljava/lang/String; = "carsetting.db"

.field private static final DB_VERSION:I = 0x7

.field public static final GSENSOR_ENABLE:Ljava/lang/String; = "gsensor_enable"

.field public static final GSENSOR_SENSITIVE:Ljava/lang/String; = "gsensor_sensitive"

.field public static final NAVI_HUD_ENABLE:Ljava/lang/String; = "navi_hud_enable"

.field public static final REMOTE_CTRL:Ljava/lang/String; = "remotectrl"

.field public static final SETTING_TABLE:Ljava/lang/String; = "carsetting"

.field public static final TTS_MUTE:Ljava/lang/String; = "ttsmute"

.field public static final VIDEO_LOCK_ENABLE:Ljava/lang/String; = "video_lock_enable"

.field public static final WAKEUP_SENSITY:Ljava/lang/String; = "sensity"


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "carsetting.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "CarSettingDatabaseHelper"

    iput-object v0, p0, Lcom/car/provider/CarSettingDatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE carsetting (ttsmute INTEGER PRIMARY KEY DEFAULT 0,autoclear INTEGER DEFAULT 1,remotectrl INTEGER DEFAULT 1,autosleeptime INTEGER DEFAULT 30,sensity INTEGER DEFAULT 2,gsensor_enable INTEGER DEFAULT 1,gsensor_sensitive INTEGER DEFAULT 1,video_lock_enable INTEGER DEFAULT 1,navi_hud_enable INTEGER DEFAULT 1,bt_keyboard_enable INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO carsetting VALUES (0,1,1,30,2,1,1,1,1,0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const-string v0, "CarSettingDatabaseHelper"

    const-string v1, "onUpgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DROP TABLE IF EXISTS carsetting"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/car/provider/CarSettingDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
