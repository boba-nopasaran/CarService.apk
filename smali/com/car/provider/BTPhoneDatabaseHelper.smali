.class public Lcom/car/provider/BTPhoneDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BTPhoneDatabaseHelper.java"


# static fields
.field public static final BTCALLLOG_TABLE:Ljava/lang/String; = "btcalllog"

.field public static final BTCONTACT_TABLE:Ljava/lang/String; = "btcontact"

.field public static final BTPHONE_DATE:Ljava/lang/String; = "date"

.field public static final BTPHONE_ID:Ljava/lang/String; = "id"

.field public static final BTPHONE_NAME:Ljava/lang/String; = "name"

.field public static final BTPHONE_NUMBER:Ljava/lang/String; = "number"

.field public static final BTPHONE_TYPE:Ljava/lang/String; = "type"

.field public static final CALLLOG_URI:Landroid/net/Uri;

.field public static final CONTACT_URI:Landroid/net/Uri;

.field protected static final DB_NAME:Ljava/lang/String; = "btphone.db"

.field private static final DB_VERSION:I = 0x1


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.car.provider.btprovider/btcalllog"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/provider/BTPhoneDatabaseHelper;->CALLLOG_URI:Landroid/net/Uri;

    const-string v0, "content://com.car.provider.btprovider/btcontact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/provider/BTPhoneDatabaseHelper;->CONTACT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "btphone.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "CarSvc_BTPhone"

    iput-object v0, p0, Lcom/car/provider/BTPhoneDatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE btcalllog (type INTEGER,number TEXT NOT NULL,date INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE btcontact (id INTEGER PRIMARY KEY AUTOINCREMENT,number TEXT NOT NULL,name TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const-string v0, "CarSvc_BTPhone"

    const-string v1, "onUpgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DROP TABLE IF EXISTS btcalllog"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS btcontact"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/car/provider/BTPhoneDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
