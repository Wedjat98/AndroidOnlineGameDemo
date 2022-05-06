.class public Lcom/ledo/fantasy/game/YunDingData;
.super Ljava/lang/Object;
.source "YunDingData.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-string v0, "YunDingData"

    sput-object v0, Lcom/ledo/fantasy/game/YunDingData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static YunDingGetChannel()Ljava/lang/String;
    .registers 1

    .prologue
    .line 209
    const-string v0, ""

    return-object v0
.end method

.method public static YunDingInitSDk(Landroid/content/Context;ILjava/lang/String;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appid"    # I
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "channeltype"    # I

    .prologue
    .line 125
    return-void
.end method

.method public static YunDingSetUserInfo(Ljava/util/Map;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public static YunDingUpdateUserInfo(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p2, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public static YunDingUseRegEvent(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    return-void
.end method

.method public static YunDingUserLoginEvent(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    return-void
.end method

.method public static YunDingUserLogoutEvent(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    return-void
.end method
