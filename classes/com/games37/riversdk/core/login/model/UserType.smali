.class public final enum Lcom/games37/riversdk/core/login/model/UserType;
.super Ljava/lang/Enum;
.source "UserType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/games37/riversdk/core/login/model/UserType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/games37/riversdk/core/login/model/UserType;

.field public static final enum ANYNOMOUS_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

.field public static final enum FACEBOOK_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

.field public static final enum GOOGLE_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

.field public static final enum HUAWEI_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

.field public static final enum MIGRATE_CODE:Lcom/games37/riversdk/core/login/model/UserType;

.field public static final enum NORMAL_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

.field public static final enum NULL_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

.field public static final enum TWITTER_TYPE:Lcom/games37/riversdk/core/login/model/UserType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/games37/riversdk/core/login/model/UserType;

    const-string v1, "NULL_TYPE"

    invoke-direct {v0, v1, v3}, Lcom/games37/riversdk/core/login/model/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/login/model/UserType;->NULL_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    .line 22
    new-instance v0, Lcom/games37/riversdk/core/login/model/UserType;

    const-string v1, "NORMAL_TYPE"

    invoke-direct {v0, v1, v4}, Lcom/games37/riversdk/core/login/model/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/login/model/UserType;->NORMAL_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    .line 26
    new-instance v0, Lcom/games37/riversdk/core/login/model/UserType;

    const-string v1, "ANYNOMOUS_TYPE"

    invoke-direct {v0, v1, v5}, Lcom/games37/riversdk/core/login/model/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/login/model/UserType;->ANYNOMOUS_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    .line 30
    new-instance v0, Lcom/games37/riversdk/core/login/model/UserType;

    const-string v1, "FACEBOOK_TYPE"

    invoke-direct {v0, v1, v6}, Lcom/games37/riversdk/core/login/model/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/login/model/UserType;->FACEBOOK_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    .line 34
    new-instance v0, Lcom/games37/riversdk/core/login/model/UserType;

    const-string v1, "GOOGLE_TYPE"

    invoke-direct {v0, v1, v7}, Lcom/games37/riversdk/core/login/model/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/login/model/UserType;->GOOGLE_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    .line 38
    new-instance v0, Lcom/games37/riversdk/core/login/model/UserType;

    const-string v1, "TWITTER_TYPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/login/model/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/login/model/UserType;->TWITTER_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    .line 42
    new-instance v0, Lcom/games37/riversdk/core/login/model/UserType;

    const-string v1, "HUAWEI_TYPE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/login/model/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/login/model/UserType;->HUAWEI_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    .line 46
    new-instance v0, Lcom/games37/riversdk/core/login/model/UserType;

    const-string v1, "MIGRATE_CODE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/login/model/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/login/model/UserType;->MIGRATE_CODE:Lcom/games37/riversdk/core/login/model/UserType;

    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/games37/riversdk/core/login/model/UserType;

    sget-object v1, Lcom/games37/riversdk/core/login/model/UserType;->NULL_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/games37/riversdk/core/login/model/UserType;->NORMAL_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/games37/riversdk/core/login/model/UserType;->ANYNOMOUS_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/games37/riversdk/core/login/model/UserType;->FACEBOOK_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/games37/riversdk/core/login/model/UserType;->GOOGLE_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/games37/riversdk/core/login/model/UserType;->TWITTER_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/games37/riversdk/core/login/model/UserType;->HUAWEI_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/games37/riversdk/core/login/model/UserType;->MIGRATE_CODE:Lcom/games37/riversdk/core/login/model/UserType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/games37/riversdk/core/login/model/UserType;->$VALUES:[Lcom/games37/riversdk/core/login/model/UserType;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toUserType(Ljava/lang/String;)Lcom/games37/riversdk/core/login/model/UserType;
    .registers 3
    .param p0, "thisUserType"    # Ljava/lang/String;

    .prologue
    .line 50
    :try_start_0
    invoke-static {p0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 51
    sget-object v1, Lcom/games37/riversdk/core/login/model/UserType;->NULL_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    .line 55
    :goto_8
    return-object v1

    .line 53
    :cond_9
    invoke-static {p0}, Lcom/games37/riversdk/core/login/model/UserType;->valueOf(Ljava/lang/String;)Lcom/games37/riversdk/core/login/model/UserType;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v1

    goto :goto_8

    .line 54
    :catch_e
    move-exception v0

    .line 55
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/games37/riversdk/core/login/model/UserType;->NORMAL_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    goto :goto_8
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/games37/riversdk/core/login/model/UserType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/games37/riversdk/core/login/model/UserType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/login/model/UserType;

    return-object v0
.end method

.method public static values()[Lcom/games37/riversdk/core/login/model/UserType;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/games37/riversdk/core/login/model/UserType;->$VALUES:[Lcom/games37/riversdk/core/login/model/UserType;

    invoke-virtual {v0}, [Lcom/games37/riversdk/core/login/model/UserType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/games37/riversdk/core/login/model/UserType;

    return-object v0
.end method
