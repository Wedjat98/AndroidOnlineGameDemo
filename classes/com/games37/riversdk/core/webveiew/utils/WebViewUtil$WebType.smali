.class public final enum Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;
.super Ljava/lang/Enum;
.source "WebViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WebType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

.field public static final enum ACCOUNT:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

.field public static final enum ANNOUNCEMENT:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

.field public static final enum AUTOCHAT:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

.field public static final enum BBS:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

.field public static final enum CHATVIP:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

.field public static final enum CUSTOM:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

.field public static final enum FAQ:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

.field public static final enum FIND_PWD:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

.field public static final enum FLOATVIEW_MENU:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

.field public static final enum PRIVACY:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

.field public static final enum RECHARGE:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

.field public static final enum SELECT_RECHARGE:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

.field public static final enum SERVICE:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

.field public static final enum UPDATE:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

.field public static final enum USERCENTER_BIND:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v3}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->CUSTOM:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    .line 36
    new-instance v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const-string v1, "FAQ"

    invoke-direct {v0, v1, v4}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->FAQ:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    .line 38
    new-instance v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const-string v1, "RECHARGE"

    invoke-direct {v0, v1, v5}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->RECHARGE:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    .line 40
    new-instance v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const-string v1, "SELECT_RECHARGE"

    invoke-direct {v0, v1, v6}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->SELECT_RECHARGE:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    .line 42
    new-instance v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const-string v1, "ACCOUNT"

    invoke-direct {v0, v1, v7}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->ACCOUNT:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    .line 44
    new-instance v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const-string v1, "UPDATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->UPDATE:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    .line 46
    new-instance v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const-string v1, "AUTOCHAT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->AUTOCHAT:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    .line 48
    new-instance v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const-string v1, "FIND_PWD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->FIND_PWD:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    .line 50
    new-instance v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const-string v1, "CHATVIP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->CHATVIP:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    .line 52
    new-instance v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const-string v1, "ANNOUNCEMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->ANNOUNCEMENT:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    .line 54
    new-instance v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const-string v1, "USERCENTER_BIND"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->USERCENTER_BIND:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    .line 56
    new-instance v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const-string v1, "FLOATVIEW_MENU"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->FLOATVIEW_MENU:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    .line 58
    new-instance v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const-string v1, "SERVICE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->SERVICE:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    .line 60
    new-instance v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const-string v1, "PRIVACY"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->PRIVACY:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    .line 62
    new-instance v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const-string v1, "BBS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->BBS:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    .line 32
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    sget-object v1, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->CUSTOM:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->FAQ:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->RECHARGE:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->SELECT_RECHARGE:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->ACCOUNT:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->UPDATE:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->AUTOCHAT:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->FIND_PWD:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->CHATVIP:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->ANNOUNCEMENT:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->USERCENTER_BIND:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->FLOATVIEW_MENU:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->SERVICE:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->PRIVACY:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->BBS:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->$VALUES:[Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    return-object v0
.end method

.method public static values()[Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->$VALUES:[Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    invoke-virtual {v0}, [Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    return-object v0
.end method
