.class public Lcom/games37/riversdk/core/controler/IntentRequest;
.super Ljava/lang/Object;
.source "IntentRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleInboundIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    .line 24
    invoke-static {p0, p1}, Lbolts/AppLinks;->getTargetUrlFromInboundIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    .line 25
    .local v0, "targetUrl":Landroid/net/Uri;
    if-eqz p1, :cond_1b

    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 27
    .local v1, "uriData":Landroid/net/Uri;
    if-eqz v1, :cond_1b

    .line 28
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/games37/riversdk/core/model/UserInformation;->setDeepLinkURL(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    .end local v1    # "uriData":Landroid/net/Uri;
    :cond_1b
    if-eqz v0, :cond_2a

    .line 33
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/games37/riversdk/core/model/UserInformation;->setDeeplinkFlag(Landroid/content/Context;I)V

    .line 46
    :cond_29
    :goto_29
    return-void

    .line 36
    :cond_2a
    invoke-static {p1}, Lcom/games37/riversdk/core/controler/IntentRequest;->isGoogleDeepLink(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 38
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/games37/riversdk/core/model/UserInformation;->setDeeplinkFlag(Landroid/content/Context;I)V

    goto :goto_29

    .line 41
    :cond_3d
    invoke-static {p1}, Lcom/games37/riversdk/core/controler/IntentRequest;->isLineDeepLink(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 43
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/games37/riversdk/core/model/UserInformation;->setDeeplinkFlag(Landroid/content/Context;I)V

    goto :goto_29
.end method

.method private static isGoogleDeepLink(Landroid/content/Intent;)Z
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 50
    .local v0, "uriData":Landroid/net/Uri;
    if-nez v0, :cond_8

    .line 56
    :cond_7
    :goto_7
    return v1

    .line 53
    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "google"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 54
    const/4 v1, 0x1

    goto :goto_7
.end method

.method private static isLineDeepLink(Landroid/content/Intent;)Z
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 61
    .local v0, "uriData":Landroid/net/Uri;
    if-nez v0, :cond_8

    .line 67
    :cond_7
    :goto_7
    return v1

    .line 64
    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "line"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 65
    const/4 v1, 0x1

    goto :goto_7
.end method
