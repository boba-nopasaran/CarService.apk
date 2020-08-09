.class public Lcom/car/provider/FMDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FMDatabaseHelper.java"


# static fields
.field protected static final DB_NAME:Ljava/lang/String; = "fm.db"

.field private static final DB_VERSION:I = 0x1

.field public static final FMENABLE:Ljava/lang/String; = "enable"

.field public static final FMFREQ:Ljava/lang/String; = "freq"

.field public static final FM_TABLE:Ljava/lang/String; = "fmconfig"


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "fm.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "FMDatabaseHelper"

    iput-object v0, p0, Lcom/car/provider/FMDatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE fmconfig (enable INTEGER PRIMARY KEY DEFAULT 0,freq INTEGER DEFAULT 10000);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO fmconfig VALUES (0,10000);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const-string v0, "FMDatabaseHelper"

    const-string v1, "onUpgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DROP TABLE IF EXISTS fmconfig"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/car/provider/FMDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
