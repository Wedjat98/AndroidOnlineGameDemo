.class public final enum Lonlysdk/framework/enumtype/SDKActionResultCode;
.super Ljava/lang/Enum;
.source "SDKActionResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lonlysdk/framework/enumtype/SDKActionResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lonlysdk/framework/enumtype/SDKActionResultCode;

.field public static final enum kSDKActionDoPushGameLogOut:Lonlysdk/framework/enumtype/SDKActionResultCode;

.field public static final enum kSDKActionInitFail:Lonlysdk/framework/enumtype/SDKActionResultCode;

.field public static final enum kSDKActionInitResultForceClose:Lonlysdk/framework/enumtype/SDKActionResultCode;

.field public static final enum kSDKActionInitSuccess:Lonlysdk/framework/enumtype/SDKActionResultCode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lonlysdk/framework/enumtype/SDKActionResultCode;

    const-string v1, "kSDKActionInitSuccess"

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/SDKActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/SDKActionResultCode;->kSDKActionInitSuccess:Lonlysdk/framework/enumtype/SDKActionResultCode;

    .line 8
    new-instance v0, Lonlysdk/framework/enumtype/SDKActionResultCode;

    const-string v1, "kSDKActionInitFail"

    invoke-direct {v0, v1, v3}, Lonlysdk/framework/enumtype/SDKActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/SDKActionResultCode;->kSDKActionInitFail:Lonlysdk/framework/enumtype/SDKActionResultCode;

    .line 9
    new-instance v0, Lonlysdk/framework/enumtype/SDKActionResultCode;

    const-string v1, "kSDKActionInitResultForceClose"

    invoke-direct {v0, v1, v4}, Lonlysdk/framework/enumtype/SDKActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/SDKActionResultCode;->kSDKActionInitResultForceClose:Lonlysdk/framework/enumtype/SDKActionResultCode;

    .line 10
    new-instance v0, Lonlysdk/framework/enumtype/SDKActionResultCode;

    const-string v1, "kSDKActionDoPushGameLogOut"

    invoke-direct {v0, v1, v5}, Lonlysdk/framework/enumtype/SDKActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/SDKActionResultCode;->kSDKActionDoPushGameLogOut:Lonlysdk/framework/enumtype/SDKActionResultCode;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lonlysdk/framework/enumtype/SDKActionResultCode;

    sget-object v1, Lonlysdk/framework/enumtype/SDKActionResultCode;->kSDKActionInitSuccess:Lonlysdk/framework/enumtype/SDKActionResultCode;

    aput-object v1, v0, v2

    sget-object v1, Lonlysdk/framework/enumtype/SDKActionResultCode;->kSDKActionInitFail:Lonlysdk/framework/enumtype/SDKActionResultCode;

    aput-object v1, v0, v3

    sget-object v1, Lonlysdk/framework/enumtype/SDKActionResultCode;->kSDKActionInitResultForceClose:Lonlysdk/framework/enumtype/SDKActionResultCode;

    aput-object v1, v0, v4

    sget-object v1, Lonlysdk/framework/enumtype/SDKActionResultCode;->kSDKActionDoPushGameLogOut:Lonlysdk/framework/enumtype/SDKActionResultCode;

    aput-object v1, v0, v5

    sput-object v0, Lonlysdk/framework/enumtype/SDKActionResultCode;->ENUM$VALUES:[Lonlysdk/framework/enumtype/SDKActionResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lonlysdk/framework/enumtype/SDKActionResultCode;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lonlysdk/framework/enumtype/SDKActionResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lonlysdk/framework/enumtype/SDKActionResultCode;

    return-object v0
.end method

.method public static values()[Lonlysdk/framework/enumtype/SDKActionResultCode;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lonlysdk/framework/enumtype/SDKActionResultCode;->ENUM$VALUES:[Lonlysdk/framework/enumtype/SDKActionResultCode;

    array-length v1, v0

    new-array v2, v1, [Lonlysdk/framework/enumtype/SDKActionResultCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
