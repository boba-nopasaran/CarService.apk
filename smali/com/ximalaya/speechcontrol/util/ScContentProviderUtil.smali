.class public Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;
.super Ljava/lang/Object;


# static fields
.field public static final SHARE_DATA_BASE_URI:Landroid/net/Uri;

.field public static final SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

.field public static final SHARE_DATA_HOST:Ljava/lang/String; = "com.ximalaya.ting.android.util.TingSharedDataContentProvider"

.field public static final TypeDownLoadTrack:I = 0x3

.field public static final TypeListenerChange:I = 0x2

.field public static final TypeLoginIn:I = 0x0

.field public static final TypeLoginOut:I = 0x1

.field public static final dataChange:Landroid/net/Uri;

.field private static mInstance:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataChangeCallBack:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/speechcontrol/IDataChangeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.ximalaya.ting.android.dataChange"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->dataChange:Landroid/net/Uri;

    const-string v0, "content://com.ximalaya.ting.android.util.TingSharedDataContentProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->SHARE_DATA_BASE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->SHARE_DATA_BASE_URI:Landroid/net/Uri;

    const-string v1, "sharedpreferences"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mDataChangeCallBack:Ljava/util/Map;

    iput-object p1, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->dataChange:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$1;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$1;-><init>(Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;ZILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->dataChange(ZILjava/lang/Object;)V

    return-void
.end method

.method private dataChange(ZILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mDataChangeCallBack:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mDataChangeCallBack:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mDataChangeCallBack:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/speechcontrol/IDataChangeCallback;

    invoke-interface {v0, p3}, Lcom/ximalaya/speechcontrol/IDataChangeCallback;->change(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;
    .locals 2

    sget-object v0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mInstance:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    if-nez v0, :cond_1

    const-class v1, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mInstance:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    invoke-direct {v0, p0}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mInstance:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mInstance:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public collectAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    :try_start_0
    const-string v1, "album"

    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCollectedByLocalAlbum(Lcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/Album;",
            ">;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "COLLECT_ALLBUM"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ge v0, v4, :cond_0

    invoke-interface {p1, v2}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->successCallBack(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "COLLECT_ALLBUM"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$2;

    invoke-direct {v2, p0}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$2;-><init>(Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;)V

    invoke-virtual {v2}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    invoke-interface {p1, v0}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->successCallBack(Ljava/lang/Object;)V

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->successCallBack(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isCollectedAlbum(J)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "id == ?"

    new-array v4, v6, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v0, v6

    :goto_1
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    goto :goto_1

    :cond_0
    move v0, v7

    goto :goto_1
.end method

.method public isCollectedAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v6

    goto :goto_0
.end method

.method public putDataCallBack(ILcom/ximalaya/speechcontrol/IDataChangeCallback;)V
    .locals 3

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mDataChangeCallBack:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mDataChangeCallBack:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeDataChange(Lcom/ximalaya/speechcontrol/IDataChangeCallback;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mDataChangeCallBack:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unCollectAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
