.class public final enum Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;
.super Ljava/lang/Enum;
.source "SDKCallbackInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/core/callback/SDKCallbackInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SDKCallbackType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

.field public static final enum BIND:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

.field public static final enum FAQ:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

.field public static final enum FB_SOCIAL:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

.field public static final enum GET_SKUDETAIL:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

.field public static final enum INIT:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

.field public static final enum LOGIN:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

.field public static final enum LOGOUT:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

.field public static final enum NOTICE:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

.field public static final enum PURCHASE:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

.field public static final enum SHARE:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

.field public static final enum SWITCH:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

.field public static final enum UNBIND:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

.field public static final enum USERCENTER:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

.field public static final enum WEBVIEW:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    const-string v1, "BIND"

    invoke-direct {v0, v1, v3}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->BIND:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 94
    new-instance v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    const-string v1, "UNBIND"

    invoke-direct {v0, v1, v4}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->UNBIND:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 99
    new-instance v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    const-string v1, "FAQ"

    invoke-direct {v0, v1, v5}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->FAQ:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 104
    new-instance v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v6}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->INIT:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 109
    new-instance v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v7}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->LOGIN:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 113
    new-instance v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    const-string v1, "LOGOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->LOGOUT:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 118
    new-instance v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    const-string v1, "SWITCH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->SWITCH:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 123
    new-instance v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    const-string v1, "NOTICE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->NOTICE:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 128
    new-instance v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    const-string v1, "PURCHASE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->PURCHASE:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 133
    new-instance v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    const-string v1, "SHARE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->SHARE:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 138
    new-instance v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    const-string v1, "USERCENTER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->USERCENTER:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 143
    new-instance v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    const-string v1, "WEBVIEW"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->WEBVIEW:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 148
    new-instance v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    const-string v1, "GET_SKUDETAIL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->GET_SKUDETAIL:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 153
    new-instance v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    const-string v1, "FB_SOCIAL"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->FB_SOCIAL:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 85
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    sget-object v1, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->BIND:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->UNBIND:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->FAQ:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->INIT:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->LOGIN:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->LOGOUT:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->SWITCH:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->NOTICE:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->PURCHASE:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->SHARE:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->USERCENTER:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->WEBVIEW:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->GET_SKUDETAIL:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->FB_SOCIAL:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->$VALUES:[Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    return-object v0
.end method

.method public static values()[Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->$VALUES:[Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    invoke-virtual {v0}, [Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    return-object v0
.end method
