.class public abstract Lonlysdk/framework/protocol/OnlySDKShare;
.super Lonlysdk/framework/protocol/OnlySDKProtocol;
.source "OnlySDKShare.java"


# static fields
.field public static final _sharekey_content:Ljava/lang/String; = "content"

.field public static final _sharekey_link:Ljava/lang/String; = "link"

.field public static final _sharekey_picUrl:Ljava/lang/String; = "picUrl"

.field public static final _sharekey_subTitle:Ljava/lang/String; = "subTitle"

.field public static final _sharekey_title:Ljava/lang/String; = "title"


# instance fields
.field protected _listenerShareResult:Lonlysdk/framework/listener/ShareResultListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lonlysdk/framework/protocol/OnlySDKProtocol;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKShare;->_listenerShareResult:Lonlysdk/framework/listener/ShareResultListener;

    .line 10
    return-void
.end method


# virtual methods
.method public getPluginName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    const-string v0, "SharePlugin"

    return-object v0
.end method

.method public final getShareResultListener()Lonlysdk/framework/listener/ShareResultListener;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKShare;->_listenerShareResult:Lonlysdk/framework/listener/ShareResultListener;

    return-object v0
.end method

.method public isSupportFunction(Lonlysdk/framework/enumtype/ShareType;)Z
    .registers 3
    .param p1, "type"    # Lonlysdk/framework/enumtype/ShareType;

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public releaseData()V
    .registers 1

    .prologue
    .line 30
    return-void
.end method

.method public final setResultListener(Lonlysdk/framework/listener/ShareResultListener;)V
    .registers 2
    .param p1, "pListener"    # Lonlysdk/framework/listener/ShareResultListener;

    .prologue
    .line 52
    iput-object p1, p0, Lonlysdk/framework/protocol/OnlySDKShare;->_listenerShareResult:Lonlysdk/framework/listener/ShareResultListener;

    .line 53
    return-void
.end method

.method public abstract share(Lonlysdk/framework/enumtype/ShareType;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonlysdk/framework/enumtype/ShareType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
