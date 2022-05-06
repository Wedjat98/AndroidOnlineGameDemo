.class public final enum Lonlysdk/framework/enumtype/PayResultCode;
.super Ljava/lang/Enum;
.source "PayResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lonlysdk/framework/enumtype/PayResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lonlysdk/framework/enumtype/PayResultCode;

.field public static final enum kPayAsynSmsSent:Lonlysdk/framework/enumtype/PayResultCode;

.field public static final enum kPayCancel:Lonlysdk/framework/enumtype/PayResultCode;

.field public static final enum kPayFail:Lonlysdk/framework/enumtype/PayResultCode;

.field public static final enum kPayInitFail:Lonlysdk/framework/enumtype/PayResultCode;

.field public static final enum kPayInitSuccess:Lonlysdk/framework/enumtype/PayResultCode;

.field public static final enum kPayNetworkError:Lonlysdk/framework/enumtype/PayResultCode;

.field public static final enum kPayOrderFail:Lonlysdk/framework/enumtype/PayResultCode;

.field public static final enum kPayOrderSuccess:Lonlysdk/framework/enumtype/PayResultCode;

.field public static final enum kPayProductionInforIncomplete:Lonlysdk/framework/enumtype/PayResultCode;

.field public static final enum kPayRequestSubmitted:Lonlysdk/framework/enumtype/PayResultCode;

.field public static final enum kPayResultNull:Lonlysdk/framework/enumtype/PayResultCode;

.field public static final enum kPaySuccess:Lonlysdk/framework/enumtype/PayResultCode;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lonlysdk/framework/enumtype/PayResultCode;

    const-string v1, "kPayResultNull"

    invoke-direct {v0, v1, v3}, Lonlysdk/framework/enumtype/PayResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/PayResultCode;->kPayResultNull:Lonlysdk/framework/enumtype/PayResultCode;

    .line 8
    new-instance v0, Lonlysdk/framework/enumtype/PayResultCode;

    const-string v1, "kPaySuccess"

    invoke-direct {v0, v1, v4}, Lonlysdk/framework/enumtype/PayResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/PayResultCode;->kPaySuccess:Lonlysdk/framework/enumtype/PayResultCode;

    .line 9
    new-instance v0, Lonlysdk/framework/enumtype/PayResultCode;

    const-string v1, "kPayFail"

    invoke-direct {v0, v1, v5}, Lonlysdk/framework/enumtype/PayResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/PayResultCode;->kPayFail:Lonlysdk/framework/enumtype/PayResultCode;

    .line 10
    new-instance v0, Lonlysdk/framework/enumtype/PayResultCode;

    const-string v1, "kPayCancel"

    invoke-direct {v0, v1, v6}, Lonlysdk/framework/enumtype/PayResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/PayResultCode;->kPayCancel:Lonlysdk/framework/enumtype/PayResultCode;

    .line 11
    new-instance v0, Lonlysdk/framework/enumtype/PayResultCode;

    const-string v1, "kPayOrderSuccess"

    invoke-direct {v0, v1, v7}, Lonlysdk/framework/enumtype/PayResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/PayResultCode;->kPayOrderSuccess:Lonlysdk/framework/enumtype/PayResultCode;

    .line 12
    new-instance v0, Lonlysdk/framework/enumtype/PayResultCode;

    const-string v1, "kPayOrderFail"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/PayResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/PayResultCode;->kPayOrderFail:Lonlysdk/framework/enumtype/PayResultCode;

    .line 13
    new-instance v0, Lonlysdk/framework/enumtype/PayResultCode;

    const-string v1, "kPayAsynSmsSent"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/PayResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/PayResultCode;->kPayAsynSmsSent:Lonlysdk/framework/enumtype/PayResultCode;

    .line 14
    new-instance v0, Lonlysdk/framework/enumtype/PayResultCode;

    const-string v1, "kPayRequestSubmitted"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/PayResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/PayResultCode;->kPayRequestSubmitted:Lonlysdk/framework/enumtype/PayResultCode;

    .line 15
    new-instance v0, Lonlysdk/framework/enumtype/PayResultCode;

    const-string v1, "kPayNetworkError"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/PayResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/PayResultCode;->kPayNetworkError:Lonlysdk/framework/enumtype/PayResultCode;

    .line 16
    new-instance v0, Lonlysdk/framework/enumtype/PayResultCode;

    const-string v1, "kPayProductionInforIncomplete"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/PayResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/PayResultCode;->kPayProductionInforIncomplete:Lonlysdk/framework/enumtype/PayResultCode;

    .line 17
    new-instance v0, Lonlysdk/framework/enumtype/PayResultCode;

    const-string v1, "kPayInitSuccess"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/PayResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/PayResultCode;->kPayInitSuccess:Lonlysdk/framework/enumtype/PayResultCode;

    .line 18
    new-instance v0, Lonlysdk/framework/enumtype/PayResultCode;

    const-string v1, "kPayInitFail"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/PayResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/PayResultCode;->kPayInitFail:Lonlysdk/framework/enumtype/PayResultCode;

    .line 6
    const/16 v0, 0xc

    new-array v0, v0, [Lonlysdk/framework/enumtype/PayResultCode;

    sget-object v1, Lonlysdk/framework/enumtype/PayResultCode;->kPayResultNull:Lonlysdk/framework/enumtype/PayResultCode;

    aput-object v1, v0, v3

    sget-object v1, Lonlysdk/framework/enumtype/PayResultCode;->kPaySuccess:Lonlysdk/framework/enumtype/PayResultCode;

    aput-object v1, v0, v4

    sget-object v1, Lonlysdk/framework/enumtype/PayResultCode;->kPayFail:Lonlysdk/framework/enumtype/PayResultCode;

    aput-object v1, v0, v5

    sget-object v1, Lonlysdk/framework/enumtype/PayResultCode;->kPayCancel:Lonlysdk/framework/enumtype/PayResultCode;

    aput-object v1, v0, v6

    sget-object v1, Lonlysdk/framework/enumtype/PayResultCode;->kPayOrderSuccess:Lonlysdk/framework/enumtype/PayResultCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lonlysdk/framework/enumtype/PayResultCode;->kPayOrderFail:Lonlysdk/framework/enumtype/PayResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lonlysdk/framework/enumtype/PayResultCode;->kPayAsynSmsSent:Lonlysdk/framework/enumtype/PayResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lonlysdk/framework/enumtype/PayResultCode;->kPayRequestSubmitted:Lonlysdk/framework/enumtype/PayResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lonlysdk/framework/enumtype/PayResultCode;->kPayNetworkError:Lonlysdk/framework/enumtype/PayResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lonlysdk/framework/enumtype/PayResultCode;->kPayProductionInforIncomplete:Lonlysdk/framework/enumtype/PayResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lonlysdk/framework/enumtype/PayResultCode;->kPayInitSuccess:Lonlysdk/framework/enumtype/PayResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lonlysdk/framework/enumtype/PayResultCode;->kPayInitFail:Lonlysdk/framework/enumtype/PayResultCode;

    aput-object v2, v0, v1

    sput-object v0, Lonlysdk/framework/enumtype/PayResultCode;->ENUM$VALUES:[Lonlysdk/framework/enumtype/PayResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lonlysdk/framework/enumtype/PayResultCode;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lonlysdk/framework/enumtype/PayResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lonlysdk/framework/enumtype/PayResultCode;

    return-object v0
.end method

.method public static values()[Lonlysdk/framework/enumtype/PayResultCode;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lonlysdk/framework/enumtype/PayResultCode;->ENUM$VALUES:[Lonlysdk/framework/enumtype/PayResultCode;

    array-length v1, v0

    new-array v2, v1, [Lonlysdk/framework/enumtype/PayResultCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
