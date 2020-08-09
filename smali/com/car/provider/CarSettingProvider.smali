.class public Lcom/car/provider/CarSettingProvider;
.super Landroid/content/ContentProvider;
.source "CarSettingProvider.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.car.provider.carsettingprovider"

.field static final AUTOCLEAR:I = 0x3

.field static final AUTOSLEEPTIME:I = 0x5

.field static final BTKEYBOARDENABLE:I = 0xa

.field static final GSENSORENABLE:I = 0x6

.field static final GSENSORSENSITIVE:I = 0x7

.field static final NAVIHUDENABLE:I = 0x9

.field static final REMOTECTRL:I = 0x4

.field static TTSMODEALL_TYPE:Ljava/lang/String; = null

.field static TTSMODE_TYPE:Ljava/lang/String; = null

.field static final TTSMUTE:I = 0x1

.field public static final URI:Landroid/net/Uri;

.field public static final URI_AUTOCLEAR:Landroid/net/Uri;

.field public static final URI_AUTOSLEEPTIME:Landroid/net/Uri;

.field public static final URI_BT_KEYBOARD_ENABLE:Landroid/net/Uri;

.field public static final URI_GSENSOR_ENABLE:Landroid/net/Uri;

.field public static final URI_GSENSOR_SENSITIVE:Landroid/net/Uri;

.field public static final URI_MUTE:Landroid/net/Uri;

.field public static final URI_NAVI_HUD_ENABLE:Landroid/net/Uri;

.field public static final URI_REMOTECTRL:Landroid/net/Uri;

.field public static final URI_VIDEO_LOCK_ENABLE:Landroid/net/Uri;

.field public static final URI_WAKEUP:Landroid/net/Uri;

.field static final VIDEOLOCKENABLE:I = 0x8

.field static final WAKEUPSENSITY:I = 0x2

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field final TAG:Ljava/lang/String;

.field mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://com.car.provider.carsettingprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/provider/CarSettingProvider;->URI:Landroid/net/Uri;

    const-string v0, "content://com.car.provider.carsettingprovider/ttsmute/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/provider/CarSettingProvider;->URI_MUTE:Landroid/net/Uri;

    const-string v0, "content://com.car.provider.carsettingprovider/sensity/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/provider/CarSettingProvider;->URI_WAKEUP:Landroid/net/Uri;

    const-string v0, "content://com.car.provider.carsettingprovider/autoclear/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/provider/CarSettingProvider;->URI_AUTOCLEAR:Landroid/net/Uri;

    const-string v0, "content://com.car.provider.carsettingprovider/remotectrl/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/provider/CarSettingProvider;->URI_REMOTECTRL:Landroid/net/Uri;

    const-string v0, "content://com.car.provider.carsettingprovider/autosleeptime/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/provider/CarSettingProvider;->URI_AUTOSLEEPTIME:Landroid/net/Uri;

    const-string v0, "content://com.car.provider.carsettingprovider/gsensor_enable/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/provider/CarSettingProvider;->URI_GSENSOR_ENABLE:Landroid/net/Uri;

    const-string v0, "content://com.car.provider.carsettingprovider/gsensor_sensitive/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/provider/CarSettingProvider;->URI_GSENSOR_SENSITIVE:Landroid/net/Uri;

    const-string v0, "content://com.car.provider.carsettingprovider/video_lock_enable/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/provider/CarSettingProvider;->URI_VIDEO_LOCK_ENABLE:Landroid/net/Uri;

    const-string v0, "content://com.car.provider.carsettingprovider/navi_hud_enable/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/provider/CarSettingProvider;->URI_NAVI_HUD_ENABLE:Landroid/net/Uri;

    const-string v0, "content://com.car.provider.carsettingprovider/bt_keyboard_enable/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/provider/CarSettingProvider;->URI_BT_KEYBOARD_ENABLE:Landroid/net/Uri;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/car/provider/CarSettingProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v0, "vnd.android.cursor.dir/ttsmute"

    sput-object v0, Lcom/car/provider/CarSettingProvider;->TTSMODEALL_TYPE:Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/ttsmute"

    sput-object v0, Lcom/car/provider/CarSettingProvider;->TTSMODE_TYPE:Ljava/lang/String;

    sget-object v0, Lcom/car/provider/CarSettingProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.car.provider.carsettingprovider"

    const-string v2, "ttsmute"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/car/provider/CarSettingProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.car.provider.carsettingprovider"

    const-string v2, "sensity"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/car/provider/CarSettingProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.car.provider.carsettingprovider"

    const-string v2, "autoclear"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/car/provider/CarSettingProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.car.provider.carsettingprovider"

    const-string v2, "remotectrl"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/car/provider/CarSettingProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.car.provider.carsettingprovider"

    const-string v2, "autosleeptime"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/car/provider/CarSettingProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.car.provider.carsettingprovider"

    const-string v2, "gsensor_enable"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/car/provider/CarSettingProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.car.provider.carsettingprovider"

    const-string v2, "gsensor_sensitive"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/car/provider/CarSettingProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.car.provider.carsettingprovider"

    const-string v2, "video_lock_enable"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/car/provider/CarSettingProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.car.provider.carsettingprovider"

    const-string v2, "navi_hud_enable"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/car/provider/CarSettingProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.car.provider.carsettingprovider"

    const-string v2, "bt_keyboard_enable"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string v0, "CarSvc_CarSettingProvider"

    iput-object v0, p0, Lcom/car/provider/CarSettingProvider;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const-string v0, "CarSvc_CarSettingProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " since no deleting needed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/car/provider/CarSettingProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    sget-object v1, Lcom/car/provider/CarSettingProvider;->TTSMODE_TYPE:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    const-string v0, "CarSvc_CarSettingProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " since no inserting needed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    new-instance v0, Lcom/car/provider/CarSettingDatabaseHelper;

    invoke-virtual {p0}, Lcom/car/provider/CarSettingProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/car/provider/CarSettingDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/car/provider/CarSettingProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/car/provider/CarSettingProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v2, "carsetting"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    return-object v8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    iget-object v1, p0, Lcom/car/provider/CarSettingProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "carsetting"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/car/provider/CarSettingProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/car/provider/CarSettingProvider;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    return v1
.end method
