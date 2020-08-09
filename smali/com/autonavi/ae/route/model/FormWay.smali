.class public final enum Lcom/autonavi/ae/route/model/FormWay;
.super Ljava/lang/Enum;
.source "FormWay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/ae/route/model/FormWay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formay_Count:Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formway_Common_Link:Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formway_Cross_Link:Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formway_Divised_Link:Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formway_Entrance_Link:Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formway_Exit_Link:Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formway_JCT:Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formway_Round_Circle:Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formway_ServiceJCT_Road:Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formway_ServiceSlipJCT_Road:Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formway_ServiceSlip_Road:Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formway_Service_Road:Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formway_Side_Road:Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formway_Slip_JCT:Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formway_Slip_Road:Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formway_Turn_LeftRight_Line:Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formway_Turn_Left_LineA:Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formway_Turn_Left_LineB:Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formway_Turn_Right_LineA:Lcom/autonavi/ae/route/model/FormWay;

.field public static final enum Formway_Turn_Right_LineB:Lcom/autonavi/ae/route/model/FormWay;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formway_Divised_Link"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formway_Divised_Link:Lcom/autonavi/ae/route/model/FormWay;

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formway_Cross_Link"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formway_Cross_Link:Lcom/autonavi/ae/route/model/FormWay;

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formway_JCT"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formway_JCT:Lcom/autonavi/ae/route/model/FormWay;

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formway_Round_Circle"

    invoke-direct {v0, v1, v6}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formway_Round_Circle:Lcom/autonavi/ae/route/model/FormWay;

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formway_Service_Road"

    invoke-direct {v0, v1, v7}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formway_Service_Road:Lcom/autonavi/ae/route/model/FormWay;

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formway_Slip_Road"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formway_Slip_Road:Lcom/autonavi/ae/route/model/FormWay;

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formway_Side_Road"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formway_Side_Road:Lcom/autonavi/ae/route/model/FormWay;

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formway_Slip_JCT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formway_Slip_JCT:Lcom/autonavi/ae/route/model/FormWay;

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formway_Exit_Link"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formway_Exit_Link:Lcom/autonavi/ae/route/model/FormWay;

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formway_Entrance_Link"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formway_Entrance_Link:Lcom/autonavi/ae/route/model/FormWay;

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formway_Turn_Right_LineA"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formway_Turn_Right_LineA:Lcom/autonavi/ae/route/model/FormWay;

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formway_Turn_Right_LineB"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formway_Turn_Right_LineB:Lcom/autonavi/ae/route/model/FormWay;

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formway_Turn_Left_LineA"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formway_Turn_Left_LineA:Lcom/autonavi/ae/route/model/FormWay;

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formway_Turn_Left_LineB"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formway_Turn_Left_LineB:Lcom/autonavi/ae/route/model/FormWay;

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formway_Common_Link"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formway_Common_Link:Lcom/autonavi/ae/route/model/FormWay;

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formway_Turn_LeftRight_Line"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formway_Turn_LeftRight_Line:Lcom/autonavi/ae/route/model/FormWay;

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formay_Count"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formay_Count:Lcom/autonavi/ae/route/model/FormWay;

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formway_ServiceJCT_Road"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formway_ServiceJCT_Road:Lcom/autonavi/ae/route/model/FormWay;

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formway_ServiceSlip_Road"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formway_ServiceSlip_Road:Lcom/autonavi/ae/route/model/FormWay;

    new-instance v0, Lcom/autonavi/ae/route/model/FormWay;

    const-string v1, "Formway_ServiceSlipJCT_Road"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/route/model/FormWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->Formway_ServiceSlipJCT_Road:Lcom/autonavi/ae/route/model/FormWay;

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/autonavi/ae/route/model/FormWay;

    sget-object v1, Lcom/autonavi/ae/route/model/FormWay;->Formway_Divised_Link:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/ae/route/model/FormWay;->Formway_Cross_Link:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/ae/route/model/FormWay;->Formway_JCT:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/ae/route/model/FormWay;->Formway_Round_Circle:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/ae/route/model/FormWay;->Formway_Service_Road:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/ae/route/model/FormWay;->Formway_Slip_Road:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/ae/route/model/FormWay;->Formway_Side_Road:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/autonavi/ae/route/model/FormWay;->Formway_Slip_JCT:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/autonavi/ae/route/model/FormWay;->Formway_Exit_Link:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/autonavi/ae/route/model/FormWay;->Formway_Entrance_Link:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/autonavi/ae/route/model/FormWay;->Formway_Turn_Right_LineA:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/autonavi/ae/route/model/FormWay;->Formway_Turn_Right_LineB:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/autonavi/ae/route/model/FormWay;->Formway_Turn_Left_LineA:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/autonavi/ae/route/model/FormWay;->Formway_Turn_Left_LineB:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/autonavi/ae/route/model/FormWay;->Formway_Common_Link:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/autonavi/ae/route/model/FormWay;->Formway_Turn_LeftRight_Line:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/autonavi/ae/route/model/FormWay;->Formay_Count:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/autonavi/ae/route/model/FormWay;->Formway_ServiceJCT_Road:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/autonavi/ae/route/model/FormWay;->Formway_ServiceSlip_Road:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/autonavi/ae/route/model/FormWay;->Formway_ServiceSlipJCT_Road:Lcom/autonavi/ae/route/model/FormWay;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/ae/route/model/FormWay;->$VALUES:[Lcom/autonavi/ae/route/model/FormWay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/ae/route/model/FormWay;
    .locals 1

    const-class v0, Lcom/autonavi/ae/route/model/FormWay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/route/model/FormWay;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/ae/route/model/FormWay;
    .locals 1

    sget-object v0, Lcom/autonavi/ae/route/model/FormWay;->$VALUES:[Lcom/autonavi/ae/route/model/FormWay;

    invoke-virtual {v0}, [Lcom/autonavi/ae/route/model/FormWay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/ae/route/model/FormWay;

    return-object v0
.end method
