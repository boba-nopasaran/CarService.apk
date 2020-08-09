.class public Lcom/aispeech/aios/common/utils/SysPropUtil;
.super Ljava/lang/Object;
.source "SysPropUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAiosConfPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v1, "ro.aispeech.aios.conf_path"

    const-string v2, "/system/etc/aios"

    invoke-static {p0, v1, v2}, Lcom/aispeech/aios/common/utils/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
