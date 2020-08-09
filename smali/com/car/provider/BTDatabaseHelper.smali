.class public Lcom/car/provider/BTDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BTDatabaseHelper.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.car.provider.btprovider"

.field public static final BTMAC:Ljava/lang/String; = "mac"

.field public static final BTMODE:Ljava/lang/String; = "mode"

.field public static final BT_TABLE:Ljava/lang/String; = "btconfig"

.field public static final CONTACT:Ljava/lang/String; = "contact"

.field protected static final DB_NAME:Ljava/lang/String; = "bt.db"

.field private static final DB_VERSION:I = 0x4

.field public static final URI:Landroid/net/Uri;


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.car.provider.btprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/provider/BTDatabaseHelper;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "bt.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "CarSvc_BTDbHelper"

    iput-object v0, p0, Lcom/car/provider/BTDatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE btconfig (mac TEXT PRIMARY KEY,mode INTEGER DEFAULT 0,contact INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const-string v0, "CarSvc_BTDbHelper"

    const-string v1, "onUpgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DROP TABLE IF EXISTS btconfig"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/car/provider/BTDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
