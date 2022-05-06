.class public final Lsdkplugin/framework/protocol/PluginShare;
.super Lonlysdk/framework/protocol/OnlySDKShare;
.source "PluginShare.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Lonlysdk/framework/protocol/OnlySDKShare;-><init>()V

    .line 17
    const-string v0, "gm99"

    iput-object v0, p0, Lsdkplugin/framework/protocol/PluginShare;->_channelName:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getPluginVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    const-string v0, "2.0.0"

    return-object v0
.end method

.method public releaseData()V
    .registers 1

    .prologue
    .line 30
    invoke-super {p0}, Lonlysdk/framework/protocol/OnlySDKShare;->releaseData()V

    .line 33
    return-void
.end method

.method public share(Lonlysdk/framework/enumtype/ShareType;Ljava/util/HashMap;)V
    .registers 11
    .param p1, "type"    # Lonlysdk/framework/enumtype/ShareType;
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

    .prologue
    .line 49
    .local p2, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v5, p0, Lsdkplugin/framework/protocol/PluginShare;->_isDebugMode:Z

    if-eqz v5, :cond_b

    .line 50
    iget-object v5, p0, Lsdkplugin/framework/protocol/PluginShare;->_channelName:Ljava/lang/String;

    const-string v6, "call share"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_b
    if-nez p2, :cond_e

    .line 111
    :cond_d
    :goto_d
    return-void

    .line 57
    :cond_e
    const-string v5, "title"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 58
    .local v4, "str_title":Ljava/lang/String;
    const-string v5, "subTitle"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 59
    .local v3, "str_subTitle":Ljava/lang/String;
    const-string v5, "content"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, "str_content":Ljava/lang/String;
    const-string v5, "link"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    .local v1, "str_link":Ljava/lang/String;
    const-string v5, "picUrl"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    .local v2, "str_picUrl":Ljava/lang/String;
    iget-boolean v5, p0, Lsdkplugin/framework/protocol/PluginShare;->_isDebugMode:Z

    if-eqz v5, :cond_67

    .line 65
    if-nez v4, :cond_7c

    .line 66
    iget-object v5, p0, Lsdkplugin/framework/protocol/PluginShare;->_channelName:Ljava/lang/String;

    const-string v6, "title: null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_43
    if-nez v3, :cond_91

    .line 71
    iget-object v5, p0, Lsdkplugin/framework/protocol/PluginShare;->_channelName:Ljava/lang/String;

    const-string v6, "subTitle: null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_4c
    if-nez v0, :cond_a6

    .line 76
    iget-object v5, p0, Lsdkplugin/framework/protocol/PluginShare;->_channelName:Ljava/lang/String;

    const-string v6, "content: null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_55
    if-nez v1, :cond_bb

    .line 81
    iget-object v5, p0, Lsdkplugin/framework/protocol/PluginShare;->_channelName:Ljava/lang/String;

    const-string v6, "link: null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_5e
    if-nez v2, :cond_d0

    .line 86
    iget-object v5, p0, Lsdkplugin/framework/protocol/PluginShare;->_channelName:Ljava/lang/String;

    const-string v6, "picUrl: null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_67
    :goto_67
    if-nez v4, :cond_6b

    .line 93
    const-string v4, ""

    .line 95
    :cond_6b
    if-nez v3, :cond_6f

    .line 96
    const-string v3, ""

    .line 98
    :cond_6f
    if-nez v0, :cond_73

    .line 99
    const-string v0, ""

    .line 101
    :cond_73
    if-nez v1, :cond_77

    .line 102
    const-string v1, ""

    .line 104
    :cond_77
    if-nez v2, :cond_d

    .line 105
    const-string v2, ""

    goto :goto_d

    .line 68
    :cond_7c
    iget-object v5, p0, Lsdkplugin/framework/protocol/PluginShare;->_channelName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "title: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 73
    :cond_91
    iget-object v5, p0, Lsdkplugin/framework/protocol/PluginShare;->_channelName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "subTitle: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 78
    :cond_a6
    iget-object v5, p0, Lsdkplugin/framework/protocol/PluginShare;->_channelName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "content: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 83
    :cond_bb
    iget-object v5, p0, Lsdkplugin/framework/protocol/PluginShare;->_channelName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "link: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 88
    :cond_d0
    iget-object v5, p0, Lsdkplugin/framework/protocol/PluginShare;->_channelName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "picUrl: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67
.end method
