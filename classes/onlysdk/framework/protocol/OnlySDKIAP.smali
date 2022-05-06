.class public abstract Lonlysdk/framework/protocol/OnlySDKIAP;
.super Lonlysdk/framework/protocol/OnlySDKProtocol;
.source "OnlySDKIAP.java"


# static fields
.field public static final _paykey_accessToken:Ljava/lang/String; = "accessToken"

.field public static final _paykey_appName:Ljava/lang/String; = "appName"

.field public static final _paykey_authToken:Ljava/lang/String; = "authToken"

.field public static final _paykey_currencyName:Ljava/lang/String; = "currencyName"

.field public static final _paykey_extraGoods:Ljava/lang/String; = "extraGoods"

.field public static final _paykey_factionName:Ljava/lang/String; = "factionName"

.field public static final _paykey_itemId:Ljava/lang/String; = "itemId"

.field public static final _paykey_itemKind:Ljava/lang/String; = "itemKind"

.field public static final _paykey_itemName:Ljava/lang/String; = "itemName"

.field public static final _paykey_itemNum:Ljava/lang/String; = "itemNum"

.field public static final _paykey_money:Ljava/lang/String; = "money"

.field public static final _paykey_openID:Ljava/lang/String; = "openID"

.field public static final _paykey_orderNo:Ljava/lang/String; = "orderNo"

.field public static final _paykey_payCallbackURL:Ljava/lang/String; = "payCallbackURL"

.field public static final _paykey_payTime:Ljava/lang/String; = "payTime"

.field public static final _paykey_payType:Ljava/lang/String; = "payType"

.field public static final _paykey_price:Ljava/lang/String; = "price"

.field public static final _paykey_rate:Ljava/lang/String; = "rate"

.field public static final _paykey_remainGoods:Ljava/lang/String; = "remainGoods"

.field public static final _paykey_roleCreateTime:Ljava/lang/String; = "roleCreateTime"

.field public static final _paykey_roleID:Ljava/lang/String; = "roleID"

.field public static final _paykey_roleLevel:Ljava/lang/String; = "roleLevel"

.field public static final _paykey_roleName:Ljava/lang/String; = "roleName"

.field public static final _paykey_serverName:Ljava/lang/String; = "serverName"

.field public static final _paykey_serviceID:Ljava/lang/String; = "serviceID"

.field public static final _paykey_serviceName:Ljava/lang/String; = "serviceName"

.field public static final _paykey_totalGoods:Ljava/lang/String; = "totalGoods"

.field public static final _paykey_userID:Ljava/lang/String; = "userID"

.field public static final _paykey_vipLevel:Ljava/lang/String; = "vipLevel"

.field public static final _paykey_wechatId:Ljava/lang/String; = "wechatId"


# instance fields
.field protected _listenerPayResult:Lonlysdk/framework/listener/PayResultListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Lonlysdk/framework/protocol/OnlySDKProtocol;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKIAP;->_listenerPayResult:Lonlysdk/framework/listener/PayResultListener;

    .line 9
    return-void
.end method


# virtual methods
.method public final getPayResultListener()Lonlysdk/framework/listener/PayResultListener;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKIAP;->_listenerPayResult:Lonlysdk/framework/listener/PayResultListener;

    return-object v0
.end method

.method public getPluginName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    const-string v0, "IAPPlugin"

    return-object v0
.end method

.method public isSupportFunction()Z
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public abstract payForProduct(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public releaseData()V
    .registers 1

    .prologue
    .line 63
    return-void
.end method

.method public final setResultListener(Lonlysdk/framework/listener/PayResultListener;)V
    .registers 2
    .param p1, "pListener"    # Lonlysdk/framework/listener/PayResultListener;

    .prologue
    .line 95
    iput-object p1, p0, Lonlysdk/framework/protocol/OnlySDKIAP;->_listenerPayResult:Lonlysdk/framework/listener/PayResultListener;

    .line 96
    return-void
.end method
