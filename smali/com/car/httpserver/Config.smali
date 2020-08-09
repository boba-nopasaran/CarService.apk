.class public Lcom/car/httpserver/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final ACTION_DELETE:Ljava/lang/String; = "delete"

.field public static final ACTION_DIR:Ljava/lang/String; = "dir"

.field public static final ACTION_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final ACTION_GET:Ljava/lang/String; = "get"

.field public static final ACTION_NAVI:Ljava/lang/String; = "navi"

.field public static final ACTION_SELF_TEST:Ljava/lang/String; = "self_test"

.field public static final ACTION_SET:Ljava/lang/String; = "set"

.field public static final ACTION_SYNC_FILE:Ljava/lang/String; = "sync_file"

.field public static final ACTION_THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field public static final ACTION_UPGRADE:Ljava/lang/String; = "upgrade"

.field public static final HTTP_URL:Ljava/lang/String; = "cgi-bin/Config.cgi"

.field public static final PATH_CARCONTROL_APK:Ljava/lang/String; = "/system/backup/CarAssist/CarAssist.apk"

.field public static final PROPERTY_CAMERA_RECORDING_START:Ljava/lang/String; = "Camera.Recording.Start"

.field public static final PROPERTY_CAMERA_RECORDING_STATUS:Ljava/lang/String; = "Camera.Recording.Status"

.field public static final PROPERTY_CAMERA_RECORDING_STATUS_FALSE:Ljava/lang/String; = "Camera.Recording.Status=false\n"

.field public static final PROPERTY_CAMERA_RECORDING_STATUS_TRUE:Ljava/lang/String; = "Camera.Recording.Status=true\n"

.field public static final PROPERTY_CAMERA_RECORDING_STOP:Ljava/lang/String; = "Camera.Recording.Stop"

.field public static final PROPERTY_CAMERA_TAKE_PHOTO:Ljava/lang/String; = "Camera.Take.Photo"

.field public static final PROPERTY_CARCONTROL_STATUS_VERSION:Ljava/lang/String; = "Carcontrol.Status.Version"

.field public static final PROPERTY_CARDVR_DIR_PATH:Ljava/lang/String; = "path"

.field public static final PROPERTY_CARDVR_STATUS_ABILITY:Ljava/lang/String; = "CarDvr.Status.Ability"

.field public static final PROPERTY_CARDVR_STATUS_ABILITY_VALUE1:Ljava/lang/String; = "CarDvr.Status.Ability= volume,brightness\n"

.field public static final PROPERTY_CARDVR_STATUS_ABILITY_VALUE2:Ljava/lang/String; = "CarDvr.Status.Ability= volume,brightness,,voice\n"

.field public static final PROPERTY_CARDVR_STATUS_ALL:Ljava/lang/String; = "CarDvr.Status.*"

.field public static final PROPERTY_CARDVR_STATUS_DEVICE:Ljava/lang/String; = "CarDvr.Status.Device"

.field public static final PROPERTY_CARDVR_STATUS_DEVICE_VALUE:Ljava/lang/String; = "CarDvr.Status.Device=CarDvr\n"

.field public static final PROPERTY_CARDVR_STATUS_SERIALNO:Ljava/lang/String; = "CarDvr.Status.Serialno"

.field public static final PROPERTY_DVRSDCARD_STATUS_MOUNT:Ljava/lang/String; = "Dvr.Sdcard.Status.Mount"

.field public static final PROPERTY_NAVI_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final PROPERTY_NAVI_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final PROPERTY_NAVI_NAME:Ljava/lang/String; = "name"

.field public static final PROPERTY_SETTING_STATUS_ALL:Ljava/lang/String; = "Setting.Status.*"

.field public static final PROPERTY_SETTING_STATUS_BRIGHTNESS:Ljava/lang/String; = "Setting.Status.Brightness"

.field public static final PROPERTY_SETTING_STATUS_VOICE_PROMPT:Ljava/lang/String; = "Setting.Status.Voice.Prompt"

.field public static final PROPERTY_SETTING_STATUS_VOLUME:Ljava/lang/String; = "Setting.Status.Volume"

.field public static final PROPERTY_SETTING_STATUS_WAKE_UP:Ljava/lang/String; = "Setting.Status.Wake.Up"

.field public static final RESPONSE_FAIL:Ljava/lang/String; = "0\nFAIL\n"

.field public static final RESPONSE_OK:Ljava/lang/String; = "0\nOK\n"

.field public static final VIDEO_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/car/common/CarPath;->getDVRPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/httpserver/Config;->VIDEO_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
