.class Lcom/car/ad/ADStorage;
.super Ljava/lang/Object;
.source "ADStorage.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "car_ad.db"

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CarAD_ADStorage"


# instance fields
.field private mADItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/ad/ADItem;",
            ">;"
        }
    .end annotation
.end field

.field private mADStorageHelper:Lcom/car/ad/ADStorageHelper;

.field private mContext:Landroid/content/Context;

.field private mDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/ad/ADStorage;->mADItemList:Ljava/util/List;

    iput-object p1, p0, Lcom/car/ad/ADStorage;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/car/ad/ADStorageHelper;

    iget-object v1, p0, Lcom/car/ad/ADStorage;->mContext:Landroid/content/Context;

    const-string v2, "car_ad.db"

    invoke-direct {v0, v1, v2}, Lcom/car/ad/ADStorageHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/car/ad/ADStorage;->mADStorageHelper:Lcom/car/ad/ADStorageHelper;

    iget-object v0, p0, Lcom/car/ad/ADStorage;->mADStorageHelper:Lcom/car/ad/ADStorageHelper;

    invoke-virtual {v0}, Lcom/car/ad/ADStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/car/ad/ADStorage;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/car/ad/ADStorage;->loadADItemList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/car/ad/ADStorage;->mADItemList:Ljava/util/List;

    return-void
.end method

.method private batchInsertADItem(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/ad/ADItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/car/ad/ADStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/ad/ADItem;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "f_adid"

    iget-wide v6, v2, Lcom/car/ad/ADItem;->adid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "f_adurl"

    iget-object v5, v2, Lcom/car/ad/ADItem;->adurl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "f_adlink"

    iget-object v5, v2, Lcom/car/ad/ADItem;->adlink:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "f_position"

    iget-object v5, v2, Lcom/car/ad/ADItem;->position:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "f_expiredtime"

    iget-wide v6, v2, Lcom/car/ad/ADItem;->expiredtime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "f_adfile"

    iget-object v5, v2, Lcom/car/ad/ADItem;->adfile:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "f_prop"

    iget-object v5, v2, Lcom/car/ad/ADItem;->prop:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "f_singleplaycount"

    iget v5, v2, Lcom/car/ad/ADItem;->singleplaycount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "t_ad"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method private delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0}, Lcom/car/ad/ADStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private deleteAllADItem()I
    .locals 2

    const/4 v1, 0x0

    const-string v0, "t_ad"

    invoke-direct {p0, v0, v1, v1}, Lcom/car/ad/ADStorage;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/car/ad/ADStorage;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Lcom/car/ad/ADStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    move-wide v4, v2

    :goto_0
    return-wide v4

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    move-wide v4, v2

    goto :goto_0
.end method

.method private query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/car/ad/ADStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v5

    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v5, v8

    goto :goto_0
.end method

.method private update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0}, Lcom/car/ad/ADStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method closeADStorage()V
    .locals 1

    iget-object v0, p0, Lcom/car/ad/ADStorage;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/ad/ADStorage;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void
.end method

.method deleteADItem(Lcom/car/ad/ADItem;)I
    .locals 4

    const-string v0, "t_ad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "f_adid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/car/ad/ADItem;->adid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/car/ad/ADStorage;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method deleteADReportItem(Lcom/car/ad/ADReportItem;)I
    .locals 4

    const-string v0, "t_report"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/car/ad/ADReportItem;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/car/ad/ADStorage;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getADItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/car/ad/ADItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/car/ad/ADStorage;->mADItemList:Ljava/util/List;

    return-object v0
.end method

.method getKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v7, 0x0

    const-string v1, "t_misc"

    sget-object v2, Lcom/car/ad/ADStorageHelper;->sMiscProjection:[Ljava/lang/String;

    const-string v3, "misc_key=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/car/ad/ADStorage;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "misc_value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v7
.end method

.method insertADReportItem(Lcom/car/ad/ADReportItem;)V
    .locals 6

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "f_adid"

    iget-wide v4, p1, Lcom/car/ad/ADReportItem;->adid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "f_clientid"

    iget-wide v4, p1, Lcom/car/ad/ADReportItem;->clientid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "f_playtime"

    iget-wide v4, p1, Lcom/car/ad/ADReportItem;->playtime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "f_clicked"

    iget v4, p1, Lcom/car/ad/ADReportItem;->clicked:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "f_city"

    iget-object v4, p1, Lcom/car/ad/ADReportItem;->city:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "f_model"

    iget-object v4, p1, Lcom/car/ad/ADReportItem;->model:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "f_token"

    iget-object v4, p1, Lcom/car/ad/ADReportItem;->token:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "t_report"

    invoke-direct {p0, v3, v2}, Lcom/car/ad/ADStorage;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/car/ad/ADReportItem;->id:J

    return-void
.end method

.method loadADItemList()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/car/ad/ADItem;",
            ">;"
        }
    .end annotation

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "t_ad"

    sget-object v4, Lcom/car/ad/ADStorageHelper;->sADProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/car/ad/ADStorage;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "f_adid"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v2, "f_adurl"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v2, "f_adlink"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v2, "f_position"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    const-string v2, "f_expiredtime"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v2, "f_adfile"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v2, "f_prop"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    const-string v2, "f_singleplaycount"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    :cond_0
    new-instance v14, Lcom/car/ad/ADItem;

    invoke-direct {v14}, Lcom/car/ad/ADItem;-><init>()V

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v14, Lcom/car/ad/ADItem;->adid:J

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/car/ad/ADItem;->adurl:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/car/ad/ADItem;->adlink:Ljava/lang/String;

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/car/ad/ADItem;->position:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v14, Lcom/car/ad/ADItem;->expiredtime:J

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/car/ad/ADItem;->adfile:Ljava/lang/String;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/car/ad/ADItem;->prop:Ljava/lang/String;

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v14, Lcom/car/ad/ADItem;->singleplaycount:I

    invoke-virtual {v14}, Lcom/car/ad/ADItem;->parseProp()V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v2, "CarAD_ADStorage"

    const-string v3, "====loadADItemList===="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/car/ad/ADItem;

    const-string v2, "CarAD_ADStorage"

    invoke-virtual {v14}, Lcom/car/ad/ADItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v2, "CarAD_ADStorage"

    const-string v3, "======================"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v15
.end method

.method loadADReportItemList()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/car/ad/ADReportItem;",
            ">;"
        }
    .end annotation

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "t_report"

    sget-object v4, Lcom/car/ad/ADStorageHelper;->sReportProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/car/ad/ADStorage;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v2, "f_adid"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v2, "f_clientid"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v2, "f_playtime"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    const-string v2, "f_clicked"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v2, "f_city"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v2, "f_model"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    const-string v2, "f_token"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    :cond_0
    new-instance v14, Lcom/car/ad/ADReportItem;

    invoke-direct {v14}, Lcom/car/ad/ADReportItem;-><init>()V

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v14, Lcom/car/ad/ADReportItem;->id:J

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v14, Lcom/car/ad/ADReportItem;->adid:J

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v14, Lcom/car/ad/ADReportItem;->clientid:J

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v14, Lcom/car/ad/ADReportItem;->playtime:J

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v14, Lcom/car/ad/ADReportItem;->clicked:I

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/car/ad/ADReportItem;->city:Ljava/lang/String;

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/car/ad/ADReportItem;->model:Ljava/lang/String;

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/car/ad/ADReportItem;->token:Ljava/lang/String;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v2, "CarAD_ADStorage"

    const-string v3, "====loadADReportItemList===="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/car/ad/ADReportItem;

    const-string v2, "CarAD_ADStorage"

    invoke-virtual {v14}, Lcom/car/ad/ADReportItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v2, "CarAD_ADStorage"

    const-string v3, "============================"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v15
.end method

.method saveADItemList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/ad/ADItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/car/ad/ADStorage;->mADItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/car/ad/ADStorage;->deleteAllADItem()I

    iget-object v0, p0, Lcom/car/ad/ADStorage;->mADItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p1}, Lcom/car/ad/ADStorage;->batchInsertADItem(Ljava/util/List;)V

    return-void
.end method

.method saveKeyValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "misc_value"

    invoke-virtual {v3, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "t_misc"

    const-string v7, "misc_key=?"

    new-array v8, v4, [Ljava/lang/String;

    aput-object p1, v8, v5

    invoke-direct {p0, v6, v3, v7, v8}, Lcom/car/ad/ADStorage;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v6, "misc_key"

    invoke-virtual {v3, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "t_misc"

    invoke-direct {p0, v6, v3}, Lcom/car/ad/ADStorage;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0
.end method
