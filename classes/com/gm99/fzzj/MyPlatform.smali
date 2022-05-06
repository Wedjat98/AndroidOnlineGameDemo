.class public Lcom/gm99/fzzj/MyPlatform;
.super Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;
.source "MyPlatform.java"


# static fields
.field public static listenerExitGame:Landroid/content/DialogInterface$OnClickListener;

.field public static listenerJustForTip:Landroid/content/DialogInterface$OnClickListener;

.field protected static m_payResultCallback:Lonlysdk/framework/listener/PayResultListener;

.field protected static m_sdkActionCallback:Lonlysdk/framework/listener/SDKActionListener;

.field protected static m_shareResultCallback:Lonlysdk/framework/listener/ShareResultListener;

.field protected static m_userActionCallback:Lonlysdk/framework/listener/UserActionListener;

.field public static s_faqurl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/gm99/fzzj/MyPlatform;->s_faqurl:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/gm99/fzzj/MyPlatform$1;

    invoke-direct {v0}, Lcom/gm99/fzzj/MyPlatform$1;-><init>()V

    sput-object v0, Lcom/gm99/fzzj/MyPlatform;->listenerJustForTip:Landroid/content/DialogInterface$OnClickListener;

    .line 47
    new-instance v0, Lcom/gm99/fzzj/MyPlatform$2;

    invoke-direct {v0}, Lcom/gm99/fzzj/MyPlatform$2;-><init>()V

    sput-object v0, Lcom/gm99/fzzj/MyPlatform;->listenerExitGame:Landroid/content/DialogInterface$OnClickListener;

    .line 60
    new-instance v0, Lcom/gm99/fzzj/MyPlatform$3;

    invoke-direct {v0}, Lcom/gm99/fzzj/MyPlatform$3;-><init>()V

    sput-object v0, Lcom/gm99/fzzj/MyPlatform;->m_sdkActionCallback:Lonlysdk/framework/listener/SDKActionListener;

    .line 104
    new-instance v0, Lcom/gm99/fzzj/MyPlatform$4;

    invoke-direct {v0}, Lcom/gm99/fzzj/MyPlatform$4;-><init>()V

    sput-object v0, Lcom/gm99/fzzj/MyPlatform;->m_userActionCallback:Lonlysdk/framework/listener/UserActionListener;

    .line 261
    new-instance v0, Lcom/gm99/fzzj/MyPlatform$5;

    invoke-direct {v0}, Lcom/gm99/fzzj/MyPlatform$5;-><init>()V

    sput-object v0, Lcom/gm99/fzzj/MyPlatform;->m_payResultCallback:Lonlysdk/framework/listener/PayResultListener;

    .line 376
    new-instance v0, Lcom/gm99/fzzj/MyPlatform$6;

    invoke-direct {v0}, Lcom/gm99/fzzj/MyPlatform$6;-><init>()V

    sput-object v0, Lcom/gm99/fzzj/MyPlatform;->m_shareResultCallback:Lonlysdk/framework/listener/ShareResultListener;

    .line 416
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;-><init>(Landroid/app/Activity;)V

    .line 432
    return-void
.end method

.method public static FAQ(Ljava/lang/String;)V
    .registers 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 470
    return-void
.end method

.method public static parseHashMapToJson(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "{"

    .line 33
    .local v3, "string_json":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 34
    .local v1, "it":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2f

    .line 42
    const/4 v5, 0x0

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    return-object v3

    .line 35
    :cond_2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 36
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 37
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 39
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a
.end method


# virtual methods
.method public SetSDKRelatedListener()V
    .registers 3

    .prologue
    .line 419
    sget-object v0, Lcom/gm99/fzzj/MyPlatform;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    if-eqz v0, :cond_2c

    .line 420
    sget-object v0, Lcom/gm99/fzzj/MyPlatform;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    sget-object v1, Lcom/gm99/fzzj/MyPlatform;->m_sdkActionCallback:Lonlysdk/framework/listener/SDKActionListener;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->setActionListener(Lonlysdk/framework/listener/SDKActionListener;)V

    .line 421
    sget-object v0, Lcom/gm99/fzzj/MyPlatform;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    sget-object v1, Lcom/gm99/fzzj/MyPlatform;->m_userActionCallback:Lonlysdk/framework/listener/UserActionListener;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->setActionListener(Lonlysdk/framework/listener/UserActionListener;)V

    .line 422
    sget-object v0, Lcom/gm99/fzzj/MyPlatform;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getIAPPlugin()Lonlysdk/framework/protocol/OnlySDKIAP;

    move-result-object v0

    sget-object v1, Lcom/gm99/fzzj/MyPlatform;->m_payResultCallback:Lonlysdk/framework/listener/PayResultListener;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKIAP;->setResultListener(Lonlysdk/framework/listener/PayResultListener;)V

    .line 423
    sget-object v0, Lcom/gm99/fzzj/MyPlatform;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getSharePlugin()Lonlysdk/framework/protocol/OnlySDKShare;

    move-result-object v0

    sget-object v1, Lcom/gm99/fzzj/MyPlatform;->m_shareResultCallback:Lonlysdk/framework/listener/ShareResultListener;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKShare;->setResultListener(Lonlysdk/framework/listener/ShareResultListener;)V

    .line 425
    :cond_2c
    return-void
.end method

.method public postinitializeGame()V
    .registers 1

    .prologue
    .line 442
    return-void
.end method

.method public release()V
    .registers 1

    .prologue
    .line 436
    invoke-super {p0}, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->release()V

    .line 437
    return-void
.end method

.method public supportFeature(I)Z
    .registers 3
    .param p1, "feature"    # I

    .prologue
    .line 447
    packed-switch p1, :pswitch_data_8

    .line 454
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 450
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 447
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method
