.class public Lcom/car/common/OEM;
.super Ljava/lang/Object;
.source "OEM.java"


# static fields
.field public static final BEI_DOU:I = 0x1

.field public static final CHE_YI_TONG:I = 0x4

.field private static final DEBUG:Z

.field public static final ECAR:I = 0x3

.field public static final ID:I

.field public static final NAME:Ljava/lang/String;

.field private static final NAME_BEI_DOU:Ljava/lang/String; = "S_BeiDou"

.field private static final NAME_CHE_YI_TONG:Ljava/lang/String; = "CheYiTong"

.field private static final NAME_ECAR:Ljava/lang/String; = "ECAR"

.field private static final NAME_TMCC:Ljava/lang/String; = "TMCC"

.field private static final PROP_FILE_NAME:Ljava/lang/String; = "/system/bin/oem.bin"

.field private static final REPLACE_PREFIX:Ljava/lang/String; = "replace."

.field private static final STRING_PREFIX:Ljava/lang/String; = "string.id."

.field private static final TAG:Ljava/lang/String; = "OEM"

.field public static final TMCC:I = 0x2

.field private static mProp:Ljava/util/Properties;

.field private static mReplace:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "oem.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/car/common/OEM;->DEBUG:Z

    const-string v0, "ro.oem.customer"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/common/OEM;->NAME:Ljava/lang/String;

    sget-object v0, Lcom/car/common/OEM;->NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/car/common/OEM;->customerName2ID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/car/common/OEM;->ID:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/car/common/OEM;->mReplace:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/car/common/OEM;->mStrings:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static customerName2ID(Ljava/lang/String;)I
    .locals 1

    const-string v0, "S_BeiDou"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "TMCC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "ECAR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string v0, "CheYiTong"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCustomerName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/common/OEM;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/common/OEM;->mProp:Ljava/util/Properties;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/car/common/OEM;->loadProperties()V

    :cond_0
    sget-object v0, Lcom/car/common/OEM;->mProp:Ljava/util/Properties;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/car/common/OEM;->mProp:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public static getProp(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const-string v2, ""

    invoke-static {p0, v2}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    goto :goto_0
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/car/common/OEM;->getString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/car/common/OEM;->mProp:Ljava/util/Properties;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/car/common/OEM;->loadProperties()V

    :cond_0
    sget-object v3, Lcom/car/common/OEM;->mProp:Ljava/util/Properties;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    sget-object v3, Lcom/car/common/OEM;->mReplace:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static getStringByID(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/car/common/OEM;->mProp:Ljava/util/Properties;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/car/common/OEM;->loadProperties()V

    :cond_0
    sget-object v1, Lcom/car/common/OEM;->mStrings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static loadProperties()V
    .locals 11

    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v8, "/system/bin/oem.bin"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v8, v4, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v6, v0}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    invoke-virtual {v6}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-boolean v8, Lcom/car/common/OEM;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "OEM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v8, "replace."

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "replace."

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/car/common/OEM;->mReplace:Ljava/util/Map;

    invoke-interface {v8, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v8, "string.id."

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "string.id."

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/car/common/OEM;->mStrings:Ljava/util/Map;

    invoke-interface {v8, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v8, "OEM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadProperties error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    :try_start_1
    sput-object v6, Lcom/car/common/OEM;->mProp:Ljava/util/Properties;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
