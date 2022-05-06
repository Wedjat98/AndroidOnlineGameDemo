.class public Lcom/facebook/applinks/AppLinkData;
.super Ljava/lang/Object;
.source "AppLinkData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/applinks/AppLinkData$CompletionHandler;
    }
.end annotation


# static fields
.field private static final APPLINK_BRIDGE_ARGS_KEY:Ljava/lang/String; = "bridge_args"

.field private static final APPLINK_METHOD_ARGS_KEY:Ljava/lang/String; = "method_args"

.field private static final APPLINK_VERSION_KEY:Ljava/lang/String; = "version"

.field public static final ARGUMENTS_EXTRAS_KEY:Ljava/lang/String; = "extras"

.field public static final ARGUMENTS_NATIVE_CLASS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_CLASS"

.field public static final ARGUMENTS_NATIVE_URL:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_URL"

.field public static final ARGUMENTS_REFERER_DATA_KEY:Ljava/lang/String; = "referer_data"

.field public static final ARGUMENTS_TAPTIME_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_TAP_TIME_UTC"

.field private static final BRIDGE_ARGS_METHOD_KEY:Ljava/lang/String; = "method"

.field private static final BUNDLE_AL_APPLINK_DATA_KEY:Ljava/lang/String; = "al_applink_data"

.field static final BUNDLE_APPLINK_ARGS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_ARGS"

.field private static final DEFERRED_APP_LINK_ARGS_FIELD:Ljava/lang/String; = "applink_args"

.field private static final DEFERRED_APP_LINK_CLASS_FIELD:Ljava/lang/String; = "applink_class"

.field private static final DEFERRED_APP_LINK_CLICK_TIME_FIELD:Ljava/lang/String; = "click_time"

.field private static final DEFERRED_APP_LINK_EVENT:Ljava/lang/String; = "DEFERRED_APP_LINK"

.field private static final DEFERRED_APP_LINK_PATH:Ljava/lang/String; = "%s/activities"

.field private static final DEFERRED_APP_LINK_URL_FIELD:Ljava/lang/String; = "applink_url"

.field private static final EXTRAS_DEEPLINK_CONTEXT_KEY:Ljava/lang/String; = "deeplink_context"

.field private static final METHOD_ARGS_REF_KEY:Ljava/lang/String; = "ref"

.field private static final METHOD_ARGS_TARGET_URL_KEY:Ljava/lang/String; = "target_url"

.field private static final PROMOTION_CODE_KEY:Ljava/lang/String; = "promo_code"

.field private static final REFERER_DATA_REF_KEY:Ljava/lang/String; = "fb_ref"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private argumentBundle:Landroid/os/Bundle;

.field private arguments:Lorg/json/JSONObject;

.field private promotionCode:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field private targetUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    const-class v0, Lcom/facebook/applinks/AppLinkData;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .registers 3

    .prologue
    .line 154
    invoke-static {p0, p1, p2}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    return-void
.end method

.method public static createFromActivity(Landroid/app/Activity;)Lcom/facebook/applinks/AppLinkData;
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 251
    const-string v3, "activity"

    invoke-static {p0, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 253
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_d

    .line 254
    const/4 v1, 0x0

    .line 267
    :cond_c
    :goto_c
    return-object v1

    .line 257
    :cond_d
    invoke-static {v2}, Lcom/facebook/applinks/AppLinkData;->createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v1

    .line 258
    .local v1, "appLinkData":Lcom/facebook/applinks/AppLinkData;
    if-nez v1, :cond_1d

    .line 259
    const-string v3, "com.facebook.platform.APPLINK_ARGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "appLinkArgsJsonString":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/applinks/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v1

    .line 262
    .end local v0    # "appLinkArgsJsonString":Ljava/lang/String;
    :cond_1d
    if-nez v1, :cond_c

    .line 264
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/applinks/AppLinkData;->createFromUri(Landroid/net/Uri;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v1

    goto :goto_c
.end method

.method public static createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/applinks/AppLinkData;
    .registers 11
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 276
    if-nez p0, :cond_5

    move-object v0, v8

    .line 315
    :cond_4
    :goto_4
    return-object v0

    .line 280
    :cond_5
    const-string v9, "al_applink_data"

    invoke-virtual {p0, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 281
    .local v1, "applinks":Landroid/os/Bundle;
    if-nez v1, :cond_f

    move-object v0, v8

    .line 282
    goto :goto_4

    .line 285
    :cond_f
    new-instance v0, Lcom/facebook/applinks/AppLinkData;

    invoke-direct {v0}, Lcom/facebook/applinks/AppLinkData;-><init>()V

    .line 286
    .local v0, "appLinkData":Lcom/facebook/applinks/AppLinkData;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 287
    iget-object v9, v0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    if-nez v9, :cond_2c

    .line 288
    const-string v9, "target_url"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, "targetUriString":Ljava/lang/String;
    if-eqz v7, :cond_2c

    .line 290
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 293
    .end local v7    # "targetUriString":Ljava/lang/String;
    :cond_2c
    iput-object v1, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    .line 294
    iput-object v8, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    .line 295
    const-string v8, "referer_data"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 296
    .local v6, "refererData":Landroid/os/Bundle;
    if-eqz v6, :cond_40

    .line 297
    const-string v8, "fb_ref"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    .line 300
    :cond_40
    const-string v8, "extras"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 301
    .local v5, "extras":Landroid/os/Bundle;
    if-eqz v5, :cond_4

    .line 302
    const-string v8, "deeplink_context"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "deeplinkContext":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 305
    :try_start_50
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 306
    .local v3, "dlContextJson":Lorg/json/JSONObject;
    const-string v8, "promo_code"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 307
    const-string v8, "promo_code"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/facebook/applinks/AppLinkData;->promotionCode:Ljava/lang/String;
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_65} :catch_66

    goto :goto_4

    .line 309
    .end local v3    # "dlContextJson":Lorg/json/JSONObject;
    :catch_66
    move-exception v4

    .line 310
    .local v4, "e":Lorg/json/JSONException;
    sget-object v8, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v9, "Unable to parse deeplink_context JSON"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private static createFromJson(Ljava/lang/String;)Lcom/facebook/applinks/AppLinkData;
    .registers 13
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 319
    if-nez p0, :cond_5

    move-object v1, v9

    .line 375
    :goto_4
    return-object v1

    .line 325
    :cond_5
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, "appLinkArgsJson":Lorg/json/JSONObject;
    const-string v10, "version"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 328
    .local v8, "version":Ljava/lang/String;
    const-string v10, "bridge_args"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 329
    .local v2, "bridgeArgs":Lorg/json/JSONObject;
    const-string v10, "method"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, "method":Ljava/lang/String;
    const-string v10, "applink"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a7

    const-string v10, "2"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a7

    .line 332
    new-instance v1, Lcom/facebook/applinks/AppLinkData;

    invoke-direct {v1}, Lcom/facebook/applinks/AppLinkData;-><init>()V

    .line 334
    .local v1, "appLinkData":Lcom/facebook/applinks/AppLinkData;
    const-string v10, "method_args"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    iput-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    .line 336
    iget-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v11, "ref"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_aa

    .line 337
    iget-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v11, "ref"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    .line 347
    :cond_4d
    :goto_4d
    iget-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v11, "target_url"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_65

    .line 349
    iget-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v11, "target_url"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 348
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v1, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 352
    :cond_65
    iget-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v11, "extras"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_95

    .line 354
    iget-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v11, "extras"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 355
    .local v5, "extrasData":Lorg/json/JSONObject;
    const-string v10, "deeplink_context"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_95

    .line 357
    const-string v10, "deeplink_context"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 358
    .local v3, "deeplink_context":Lorg/json/JSONObject;
    const-string v10, "promo_code"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_95

    .line 360
    const-string v10, "promo_code"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 359
    iput-object v10, v1, Lcom/facebook/applinks/AppLinkData;->promotionCode:Ljava/lang/String;

    .line 365
    .end local v3    # "deeplink_context":Lorg/json/JSONObject;
    .end local v5    # "extrasData":Lorg/json/JSONObject;
    :cond_95
    iget-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-static {v10}, Lcom/facebook/applinks/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v10

    iput-object v10, v1, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;
    :try_end_9d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_9d} :catch_9f
    .catch Lcom/facebook/FacebookException; {:try_start_5 .. :try_end_9d} :catch_cd

    goto/16 :goto_4

    .line 369
    .end local v0    # "appLinkArgsJson":Lorg/json/JSONObject;
    .end local v1    # "appLinkData":Lcom/facebook/applinks/AppLinkData;
    .end local v2    # "bridgeArgs":Lorg/json/JSONObject;
    .end local v6    # "method":Ljava/lang/String;
    .end local v8    # "version":Ljava/lang/String;
    :catch_9f
    move-exception v4

    .line 370
    .local v4, "e":Lorg/json/JSONException;
    sget-object v10, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v11, "Unable to parse AppLink JSON"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Lorg/json/JSONException;
    :cond_a7
    :goto_a7
    move-object v1, v9

    .line 375
    goto/16 :goto_4

    .line 338
    .restart local v0    # "appLinkArgsJson":Lorg/json/JSONObject;
    .restart local v1    # "appLinkData":Lcom/facebook/applinks/AppLinkData;
    .restart local v2    # "bridgeArgs":Lorg/json/JSONObject;
    .restart local v6    # "method":Ljava/lang/String;
    .restart local v8    # "version":Ljava/lang/String;
    :cond_aa
    :try_start_aa
    iget-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v11, "referer_data"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 340
    iget-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    .line 341
    const-string v11, "referer_data"

    .line 340
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 342
    .local v7, "refererData":Lorg/json/JSONObject;
    const-string v10, "fb_ref"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 343
    const-string v10, "fb_ref"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;
    :try_end_cc
    .catch Lorg/json/JSONException; {:try_start_aa .. :try_end_cc} :catch_9f
    .catch Lcom/facebook/FacebookException; {:try_start_aa .. :try_end_cc} :catch_cd

    goto :goto_4d

    .line 371
    .end local v0    # "appLinkArgsJson":Lorg/json/JSONObject;
    .end local v1    # "appLinkData":Lcom/facebook/applinks/AppLinkData;
    .end local v2    # "bridgeArgs":Lorg/json/JSONObject;
    .end local v6    # "method":Ljava/lang/String;
    .end local v7    # "refererData":Lorg/json/JSONObject;
    .end local v8    # "version":Ljava/lang/String;
    :catch_cd
    move-exception v4

    .line 372
    .local v4, "e":Lcom/facebook/FacebookException;
    sget-object v10, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v11, "Unable to parse AppLink JSON"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a7
.end method

.method private static createFromUri(Landroid/net/Uri;)Lcom/facebook/applinks/AppLinkData;
    .registers 2
    .param p0, "appLinkDataUri"    # Landroid/net/Uri;

    .prologue
    .line 379
    if-nez p0, :cond_4

    .line 380
    const/4 v0, 0x0

    .line 385
    :goto_3
    return-object v0

    .line 383
    :cond_4
    new-instance v0, Lcom/facebook/applinks/AppLinkData;

    invoke-direct {v0}, Lcom/facebook/applinks/AppLinkData;-><init>()V

    .line 384
    .local v0, "appLinkData":Lcom/facebook/applinks/AppLinkData;
    iput-object p0, v0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    goto :goto_3
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "completionHandler"    # Lcom/facebook/applinks/AppLinkData$CompletionHandler;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    .line 119
    return-void
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "completionHandler"    # Lcom/facebook/applinks/AppLinkData$CompletionHandler;

    .prologue
    .line 134
    const-string v2, "context"

    invoke-static {p0, v2}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    const-string v2, "completionHandler"

    invoke-static {p2, v2}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    if-nez p1, :cond_10

    .line 138
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 141
    :cond_10
    const-string v2, "applicationId"

    invoke-static {p1, v2}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 144
    .local v0, "applicationContext":Landroid/content/Context;
    move-object v1, p1

    .line 145
    .local v1, "applicationIdCopy":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/facebook/applinks/AppLinkData$1;

    invoke-direct {v3, v0, v1, p2}, Lcom/facebook/applinks/AppLinkData$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method private static fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "completionHandler"    # Lcom/facebook/applinks/AppLinkData$CompletionHandler;

    .prologue
    .line 159
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 161
    .local v6, "deferredApplinkParams":Lorg/json/JSONObject;
    :try_start_5
    const-string v14, "event"

    const-string v15, "DEFERRED_APP_LINK"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    invoke-static/range {p0 .. p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v14

    .line 164
    invoke-static/range {p0 .. p0}, Lcom/facebook/appevents/AppEventsLogger;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 165
    invoke-static/range {p0 .. p0}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v16

    .line 162
    move/from16 v0, v16

    invoke-static {v6, v14, v15, v0}, Lcom/facebook/internal/Utility;->setAppEventAttributionParameters(Lorg/json/JSONObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V

    .line 168
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    .line 166
    invoke-static {v6, v14}, Lcom/facebook/internal/Utility;->setAppEventExtendedDeviceInfoParameters(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 169
    const-string v14, "application_package_name"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2d} :catch_c7

    .line 174
    const-string v14, "%s/activities"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 175
    .local v9, "deferredApplinkUrlPath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 179
    .local v4, "appLinkData":Lcom/facebook/applinks/AppLinkData;
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 178
    :try_start_3d
    invoke-static {v14, v9, v6, v15}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v7

    .line 180
    .local v7, "deferredApplinkRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v7}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v8

    .line 181
    .local v8, "deferredApplinkResponse":Lcom/facebook/GraphResponse;
    invoke-virtual {v8}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v11

    .line 182
    .local v11, "jsonResponse":Lorg/json/JSONObject;
    if-eqz v11, :cond_c1

    .line 184
    const-string v14, "applink_args"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "appLinkArgsJsonString":Ljava/lang/String;
    const-string v14, "click_time"

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-virtual {v11, v14, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 188
    .local v12, "tapTimeUtc":J
    const-string v14, "applink_class"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "appLinkClassName":Ljava/lang/String;
    const-string v14, "applink_url"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "appLinkUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c1

    .line 192
    invoke-static {v2}, Lcom/facebook/applinks/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/applinks/AppLinkData;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_70} :catch_d9

    move-result-object v4

    .line 194
    const-wide/16 v14, -0x1

    cmp-long v14, v12, v14

    if-eqz v14, :cond_91

    .line 196
    :try_start_77
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz v14, :cond_82

    .line 197
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v15, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    invoke-virtual {v14, v15, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 199
    :cond_82
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v14, :cond_91

    .line 200
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    .line 201
    const-string v15, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    .line 200
    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catch Lorg/json/JSONException; {:try_start_77 .. :try_end_91} :catch_d0
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_91} :catch_d9

    .line 208
    :cond_91
    :goto_91
    if-eqz v3, :cond_a9

    .line 210
    :try_start_93
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz v14, :cond_9e

    .line 211
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    .line 212
    const-string v15, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    .line 211
    invoke-virtual {v14, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    :cond_9e
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v14, :cond_a9

    .line 215
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    .line 216
    const-string v15, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    .line 215
    invoke-virtual {v14, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catch Lorg/json/JSONException; {:try_start_93 .. :try_end_a9} :catch_e2
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a9} :catch_d9

    .line 223
    :cond_a9
    :goto_a9
    if-eqz v5, :cond_c1

    .line 225
    :try_start_ab
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz v14, :cond_b6

    .line 226
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v15, "com.facebook.platform.APPLINK_NATIVE_URL"

    invoke-virtual {v14, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    :cond_b6
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v14, :cond_c1

    .line 229
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    .line 230
    const-string v15, "com.facebook.platform.APPLINK_NATIVE_URL"

    .line 229
    invoke-virtual {v14, v15, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c1
    .catch Lorg/json/JSONException; {:try_start_ab .. :try_end_c1} :catch_eb
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_c1} :catch_d9

    .line 242
    .end local v2    # "appLinkArgsJsonString":Ljava/lang/String;
    .end local v3    # "appLinkClassName":Ljava/lang/String;
    .end local v5    # "appLinkUrl":Ljava/lang/String;
    .end local v7    # "deferredApplinkRequest":Lcom/facebook/GraphRequest;
    .end local v8    # "deferredApplinkResponse":Lcom/facebook/GraphResponse;
    .end local v11    # "jsonResponse":Lorg/json/JSONObject;
    .end local v12    # "tapTimeUtc":J
    :cond_c1
    :goto_c1
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/facebook/applinks/AppLinkData$CompletionHandler;->onDeferredAppLinkDataFetched(Lcom/facebook/applinks/AppLinkData;)V

    .line 243
    return-void

    .line 170
    .end local v4    # "appLinkData":Lcom/facebook/applinks/AppLinkData;
    .end local v9    # "deferredApplinkUrlPath":Ljava/lang/String;
    :catch_c7
    move-exception v10

    .line 171
    .local v10, "e":Lorg/json/JSONException;
    new-instance v14, Lcom/facebook/FacebookException;

    const-string v15, "An error occurred while preparing deferred app link"

    invoke-direct {v14, v15, v10}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 203
    .end local v10    # "e":Lorg/json/JSONException;
    .restart local v2    # "appLinkArgsJsonString":Ljava/lang/String;
    .restart local v3    # "appLinkClassName":Ljava/lang/String;
    .restart local v4    # "appLinkData":Lcom/facebook/applinks/AppLinkData;
    .restart local v5    # "appLinkUrl":Ljava/lang/String;
    .restart local v7    # "deferredApplinkRequest":Lcom/facebook/GraphRequest;
    .restart local v8    # "deferredApplinkResponse":Lcom/facebook/GraphResponse;
    .restart local v9    # "deferredApplinkUrlPath":Ljava/lang/String;
    .restart local v11    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v12    # "tapTimeUtc":J
    :catch_d0
    move-exception v10

    .line 204
    .restart local v10    # "e":Lorg/json/JSONException;
    :try_start_d1
    sget-object v14, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v15, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d8} :catch_d9

    goto :goto_91

    .line 238
    .end local v2    # "appLinkArgsJsonString":Ljava/lang/String;
    .end local v3    # "appLinkClassName":Ljava/lang/String;
    .end local v5    # "appLinkUrl":Ljava/lang/String;
    .end local v7    # "deferredApplinkRequest":Lcom/facebook/GraphRequest;
    .end local v8    # "deferredApplinkResponse":Lcom/facebook/GraphResponse;
    .end local v10    # "e":Lorg/json/JSONException;
    .end local v11    # "jsonResponse":Lorg/json/JSONObject;
    .end local v12    # "tapTimeUtc":J
    :catch_d9
    move-exception v10

    .line 239
    .local v10, "e":Ljava/lang/Exception;
    sget-object v14, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v15, "Unable to fetch deferred applink from server"

    invoke-static {v14, v15}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    .line 218
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v2    # "appLinkArgsJsonString":Ljava/lang/String;
    .restart local v3    # "appLinkClassName":Ljava/lang/String;
    .restart local v5    # "appLinkUrl":Ljava/lang/String;
    .restart local v7    # "deferredApplinkRequest":Lcom/facebook/GraphRequest;
    .restart local v8    # "deferredApplinkResponse":Lcom/facebook/GraphResponse;
    .restart local v11    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v12    # "tapTimeUtc":J
    :catch_e2
    move-exception v10

    .line 219
    .local v10, "e":Lorg/json/JSONException;
    :try_start_e3
    sget-object v14, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v15, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    .line 232
    .end local v10    # "e":Lorg/json/JSONException;
    :catch_eb
    move-exception v10

    .line 233
    .restart local v10    # "e":Lorg/json/JSONException;
    sget-object v14, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v15, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_f3} :catch_d9

    goto :goto_c1
.end method

.method private static toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .registers 12
    .param p0, "node"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 389
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 392
    .local v3, "fields":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_11

    .line 426
    return-object v1

    .line 393
    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 395
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 397
    .local v7, "value":Ljava/lang/Object;
    instance-of v9, v7, Lorg/json/JSONObject;

    if-eqz v9, :cond_29

    .line 398
    check-cast v7, Lorg/json/JSONObject;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-static {v7}, Lcom/facebook/applinks/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_a

    .line 399
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_29
    instance-of v9, v7, Lorg/json/JSONArray;

    if-eqz v9, :cond_8c

    move-object v8, v7

    .line 400
    check-cast v8, Lorg/json/JSONArray;

    .line 401
    .local v8, "valueArr":Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-nez v9, :cond_3c

    .line 402
    new-array v9, v10, [Ljava/lang/String;

    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_a

    .line 404
    :cond_3c
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 405
    .local v4, "firstNode":Ljava/lang/Object;
    instance-of v9, v4, Lorg/json/JSONObject;

    if-eqz v9, :cond_62

    .line 406
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v2, v9, [Landroid/os/Bundle;

    .line 407
    .local v2, "bundles":[Landroid/os/Bundle;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4b
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v5, v9, :cond_55

    .line 410
    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_a

    .line 408
    :cond_55
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/applinks/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v9

    aput-object v9, v2, v5

    .line 407
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 411
    .end local v2    # "bundles":[Landroid/os/Bundle;
    .end local v5    # "i":I
    :cond_62
    instance-of v9, v4, Lorg/json/JSONArray;

    if-eqz v9, :cond_6e

    .line 413
    new-instance v9, Lcom/facebook/FacebookException;

    const-string v10, "Nested arrays are not supported."

    invoke-direct {v9, v10}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 415
    :cond_6e
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v0, v9, [Ljava/lang/String;

    .line 416
    .local v0, "arrValues":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_75
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v5, v9, :cond_7f

    .line 419
    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_a

    .line 417
    :cond_7f
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v5

    .line 416
    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    .line 423
    .end local v0    # "arrValues":[Ljava/lang/String;
    .end local v4    # "firstNode":Ljava/lang/Object;
    .end local v5    # "i":I
    .end local v8    # "valueArr":Lorg/json/JSONArray;
    :cond_8c
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a
.end method


# virtual methods
.method public getArgumentBundle()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPromotionCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->promotionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getRefererData()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    .line 474
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v1, "referer_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 476
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getTargetUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    return-object v0
.end method
