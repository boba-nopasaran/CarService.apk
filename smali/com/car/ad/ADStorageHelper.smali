.class Lcom/car/ad/ADStorageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ADStorageHelper.java"


# static fields
.field static final AD_ADFILE:Ljava/lang/String; = "f_adfile"

.field static final AD_ADID:Ljava/lang/String; = "f_adid"

.field static final AD_ADLINK:Ljava/lang/String; = "f_adlink"

.field static final AD_ADURL:Ljava/lang/String; = "f_adurl"

.field static final AD_EXPIREDTIME:Ljava/lang/String; = "f_expiredtime"

.field static final AD_POSITION:Ljava/lang/String; = "f_position"

.field static final AD_PROP:Ljava/lang/String; = "f_prop"

.field static final AD_SINGLEPLAYCOUNT:Ljava/lang/String; = "f_singleplaycount"

.field static final AD_TABLE:Ljava/lang/String; = "t_ad"

.field private static final DB_VERSION:I = 0xc

.field static final MISC_KEY:Ljava/lang/String; = "misc_key"

.field static final MISC_TABLE:Ljava/lang/String; = "t_misc"

.field static final MISC_VALUE:Ljava/lang/String; = "misc_value"

.field static final REPORT_ADID:Ljava/lang/String; = "f_adid"

.field static final REPORT_CITY:Ljava/lang/String; = "f_city"

.field static final REPORT_CLICKED:Ljava/lang/String; = "f_clicked"

.field static final REPORT_CLIENTID:Ljava/lang/String; = "f_clientid"

.field static final REPORT_ID:Ljava/lang/String; = "_id"

.field static final REPORT_MODEL:Ljava/lang/String; = "f_model"

.field static final REPORT_PLAYTIME:Ljava/lang/String; = "f_playtime"

.field static final REPORT_TABLE:Ljava/lang/String; = "t_report"

.field static final REPORT_TOKEN:Ljava/lang/String; = "f_token"

.field private static mainTmpDirSet:Z

.field static final sADProjection:[Ljava/lang/String;

.field static final sMiscProjection:[Ljava/lang/String;

.field static final sReportProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "f_adid"

    aput-object v1, v0, v3

    const-string v1, "f_adurl"

    aput-object v1, v0, v4

    const-string v1, "f_adlink"

    aput-object v1, v0, v5

    const-string v1, "f_position"

    aput-object v1, v0, v6

    const-string v1, "f_expiredtime"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "f_adfile"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "f_prop"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "f_singleplaycount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/car/ad/ADStorageHelper;->sADProjection:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "f_adid"

    aput-object v1, v0, v4

    const-string v1, "f_clientid"

    aput-object v1, v0, v5

    const-string v1, "f_playtime"

    aput-object v1, v0, v6

    const-string v1, "f_clicked"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "f_city"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "f_model"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "f_token"

    aput-object v2, v0, v1

    sput-object v0, Lcom/car/ad/ADStorageHelper;->sReportProjection:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "misc_key"

    aput-object v1, v0, v3

    const-string v1, "misc_value"

    aput-object v1, v0, v4

    sput-object v0, Lcom/car/ad/ADStorageHelper;->sMiscProjection:[Ljava/lang/String;

    sput-boolean v3, Lcom/car/ad/ADStorageHelper;->mainTmpDirSet:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    sget-boolean v0, Lcom/car/ad/ADStorageHelper;->mainTmpDirSet:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.car.cloud/databases/main"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "PRAGMA temp_store_directory = \'/data/data/com.car.cloud/databases/main\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/car/ad/ADStorageHelper;->mainTmpDirSet:Z

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    sget-boolean v0, Lcom/car/ad/ADStorageHelper;->mainTmpDirSet:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.car.cloud/databases/main"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "PRAGMA temp_store_directory = \'/data/data/com.car.cloud/databases/main\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/car/ad/ADStorageHelper;->mainTmpDirSet:Z

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE t_ad (f_adid INTEGER PRIMARY KEY,f_adurl TEXT,f_adlink TEXT,f_position TEXT,f_expiredtime INTEGER,f_adfile TEXT,f_prop TEXT,f_singleplaycount INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE t_report (_id INTEGER PRIMARY KEY,f_adid INTEGER,f_clientid INTEGER,f_playtime INTEGER,f_clicked INTEGER DEFAULT 0,f_city TEXT,f_model TEXT,f_token TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE t_misc (misc_key TEXT PRIMARY KEY,misc_value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS t_ad"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS t_report"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS t_misc"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/car/ad/ADStorageHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
