.class public final Lcom/aispeech/aios/common/config/SDKApi$PhoneApi;
.super Ljava/lang/Object;
.source "SDKApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/common/config/SDKApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneApi"
.end annotation


# static fields
.field public static final BLUETOOTH_STATE_GET:Ljava/lang/String; = "sdk.phone.bluetooth.state.get"

.field public static final BLUETOOTH_STATE_SET:Ljava/lang/String; = "phone.bluetooth.state"

.field public static final CALL_IDLE:Ljava/lang/String; = "sdk.phone.call.idle"

.field public static final CALL_OFFHOOK:Ljava/lang/String; = "sdk.phone.call.offhook"

.field public static final CONTACTS_CLEAR:Ljava/lang/String; = "phone.contacts.clear"

.field public static final CONTACTS_SYNC:Ljava/lang/String; = "phone.contacts"

.field public static final DOMAIN:Ljava/lang/String; = "/sdk/phone"

.field public static final INCOMING_ACCEPT:Ljava/lang/String; = "sdk.phone.accept.incoming"

.field public static final INCOMING_BROADCAST:Ljava/lang/String; = "sdk.phone.incoming.broadcast.enable"

.field public static final INCOMING_REJECT:Ljava/lang/String; = "sdk.phone.reject.incoming"

.field public static final INCOMING_RING:Ljava/lang/String; = "sdk.phone.incoming.ring"

.field public static final INCOMING_UI:Ljava/lang/String; = "sdk.phone.incoming.ui"

.field public static final NUMBER_CORRECT:Ljava/lang/String; = "sdk.phone.number.correct.enable"

.field public static final OUTGOING:Ljava/lang/String; = "sdk.phone.outgoing.call"

.field public static final OUTGOING_RING:Ljava/lang/String; = "sdk.phone.outgoing.ring"

.field public static final PHONE_PREFIX:Ljava/lang/String; = "sdk.phone"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
