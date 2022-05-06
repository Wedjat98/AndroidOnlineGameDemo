.class public abstract Lonlysdk/framework/protocol/OnlySDKProtocol;
.super Ljava/lang/Object;
.source "OnlySDKProtocol.java"


# instance fields
.field protected _activity:Landroid/app/Activity;

.field protected _channelName:Ljava/lang/String;

.field protected _isBgTransparent:Z

.field protected _isDebugMode:Z

.field protected _isLandScape:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKProtocol;->_activity:Landroid/app/Activity;

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lonlysdk/framework/protocol/OnlySDKProtocol;->_isLandScape:Z

    .line 12
    iput-boolean v1, p0, Lonlysdk/framework/protocol/OnlySDKProtocol;->_isBgTransparent:Z

    .line 13
    iput-boolean v1, p0, Lonlysdk/framework/protocol/OnlySDKProtocol;->_isDebugMode:Z

    .line 14
    const-string v0, "not known channel"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKProtocol;->_channelName:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final getChannelName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKProtocol;->_channelName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPluginName()Ljava/lang/String;
.end method

.method public abstract getPluginVersion()Ljava/lang/String;
.end method

.method public final setDebugMode(Z)V
    .registers 2
    .param p1, "bDebug"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lonlysdk/framework/protocol/OnlySDKProtocol;->_isDebugMode:Z

    .line 51
    return-void
.end method

.method public final setDefaultData(Landroid/app/Activity;ZZ)V
    .registers 4
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "isLandScape"    # Z
    .param p3, "isBgTransparent"    # Z

    .prologue
    .line 20
    iput-object p1, p0, Lonlysdk/framework/protocol/OnlySDKProtocol;->_activity:Landroid/app/Activity;

    .line 21
    iput-boolean p2, p0, Lonlysdk/framework/protocol/OnlySDKProtocol;->_isLandScape:Z

    .line 22
    iput-boolean p3, p0, Lonlysdk/framework/protocol/OnlySDKProtocol;->_isBgTransparent:Z

    .line 23
    return-void
.end method
