.class Lcom/gm99/fzzj/MyPlatform$5$1;
.super Ljava/lang/Object;
.source "MyPlatform.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gm99/fzzj/MyPlatform$5;->onPayResult(Lonlysdk/framework/enumtype/PayResultCode;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$onlysdk$framework$enumtype$PayResultCode:[I


# instance fields
.field final synthetic this$1:Lcom/gm99/fzzj/MyPlatform$5;

.field private final synthetic val$info_payreg:Ljava/util/HashMap;

.field private final synthetic val$ret_payreg:Lonlysdk/framework/enumtype/PayResultCode;


# direct methods
.method static synthetic $SWITCH_TABLE$onlysdk$framework$enumtype$PayResultCode()[I
    .registers 3

    .prologue
    .line 273
    sget-object v0, Lcom/gm99/fzzj/MyPlatform$5$1;->$SWITCH_TABLE$onlysdk$framework$enumtype$PayResultCode:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lonlysdk/framework/enumtype/PayResultCode;->values()[Lonlysdk/framework/enumtype/PayResultCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lonlysdk/framework/enumtype/PayResultCode;->kPayAsynSmsSent:Lonlysdk/framework/enumtype/PayResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/PayResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_96

    :goto_15
    :try_start_15
    sget-object v1, Lonlysdk/framework/enumtype/PayResultCode;->kPayCancel:Lonlysdk/framework/enumtype/PayResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/PayResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_94

    :goto_1e
    :try_start_1e
    sget-object v1, Lonlysdk/framework/enumtype/PayResultCode;->kPayFail:Lonlysdk/framework/enumtype/PayResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/PayResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_92

    :goto_27
    :try_start_27
    sget-object v1, Lonlysdk/framework/enumtype/PayResultCode;->kPayInitFail:Lonlysdk/framework/enumtype/PayResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/PayResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_31} :catch_90

    :goto_31
    :try_start_31
    sget-object v1, Lonlysdk/framework/enumtype/PayResultCode;->kPayInitSuccess:Lonlysdk/framework/enumtype/PayResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/PayResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3b} :catch_8e

    :goto_3b
    :try_start_3b
    sget-object v1, Lonlysdk/framework/enumtype/PayResultCode;->kPayNetworkError:Lonlysdk/framework/enumtype/PayResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/PayResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_45} :catch_8c

    :goto_45
    :try_start_45
    sget-object v1, Lonlysdk/framework/enumtype/PayResultCode;->kPayOrderFail:Lonlysdk/framework/enumtype/PayResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/PayResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4e} :catch_8a

    :goto_4e
    :try_start_4e
    sget-object v1, Lonlysdk/framework/enumtype/PayResultCode;->kPayOrderSuccess:Lonlysdk/framework/enumtype/PayResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/PayResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_57} :catch_88

    :goto_57
    :try_start_57
    sget-object v1, Lonlysdk/framework/enumtype/PayResultCode;->kPayProductionInforIncomplete:Lonlysdk/framework/enumtype/PayResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/PayResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_61} :catch_86

    :goto_61
    :try_start_61
    sget-object v1, Lonlysdk/framework/enumtype/PayResultCode;->kPayRequestSubmitted:Lonlysdk/framework/enumtype/PayResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/PayResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_6b} :catch_84

    :goto_6b
    :try_start_6b
    sget-object v1, Lonlysdk/framework/enumtype/PayResultCode;->kPayResultNull:Lonlysdk/framework/enumtype/PayResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/PayResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_74} :catch_82

    :goto_74
    :try_start_74
    sget-object v1, Lonlysdk/framework/enumtype/PayResultCode;->kPaySuccess:Lonlysdk/framework/enumtype/PayResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/PayResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_7d} :catch_80

    :goto_7d
    sput-object v0, Lcom/gm99/fzzj/MyPlatform$5$1;->$SWITCH_TABLE$onlysdk$framework$enumtype$PayResultCode:[I

    goto :goto_4

    :catch_80
    move-exception v1

    goto :goto_7d

    :catch_82
    move-exception v1

    goto :goto_74

    :catch_84
    move-exception v1

    goto :goto_6b

    :catch_86
    move-exception v1

    goto :goto_61

    :catch_88
    move-exception v1

    goto :goto_57

    :catch_8a
    move-exception v1

    goto :goto_4e

    :catch_8c
    move-exception v1

    goto :goto_45

    :catch_8e
    move-exception v1

    goto :goto_3b

    :catch_90
    move-exception v1

    goto :goto_31

    :catch_92
    move-exception v1

    goto :goto_27

    :catch_94
    move-exception v1

    goto :goto_1e

    :catch_96
    move-exception v1

    goto/16 :goto_15
.end method

.method constructor <init>(Lcom/gm99/fzzj/MyPlatform$5;Lonlysdk/framework/enumtype/PayResultCode;Ljava/util/HashMap;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gm99/fzzj/MyPlatform$5$1;->this$1:Lcom/gm99/fzzj/MyPlatform$5;

    iput-object p2, p0, Lcom/gm99/fzzj/MyPlatform$5$1;->val$ret_payreg:Lonlysdk/framework/enumtype/PayResultCode;

    iput-object p3, p0, Lcom/gm99/fzzj/MyPlatform$5$1;->val$info_payreg:Ljava/util/HashMap;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    .line 276
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->getPlatformID()Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "strPlatSuffix":Ljava/lang/String;
    invoke-static {}, Lcom/gm99/fzzj/MyPlatform$5$1;->$SWITCH_TABLE$onlysdk$framework$enumtype$PayResultCode()[I

    move-result-object v4

    iget-object v5, p0, Lcom/gm99/fzzj/MyPlatform$5$1;->val$ret_payreg:Lonlysdk/framework/enumtype/PayResultCode;

    invoke-virtual {v5}, Lonlysdk/framework/enumtype/PayResultCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_18a

    .line 371
    :cond_15
    :goto_15
    :pswitch_15
    return-void

    .line 280
    :pswitch_16
    sget-object v4, Lcom/gm99/fzzj/MyPlatform;->TAG:Ljava/lang/String;

    const-string v5, "pay success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/ledo/fantasy/game/JniProxy;->onBuyFinished(I)V

    .line 283
    const-string v4, "msdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/gm99/fzzj/MyPlatform$5$1;->val$info_payreg:Ljava/util/HashMap;

    if-eqz v4, :cond_15

    .line 284
    iget-object v4, p0, Lcom/gm99/fzzj/MyPlatform$5$1;->val$info_payreg:Ljava/util/HashMap;

    const-string v5, "sn"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 285
    .local v1, "par_sn":Ljava/lang/String;
    iget-object v4, p0, Lcom/gm99/fzzj/MyPlatform$5$1;->val$info_payreg:Ljava/util/HashMap;

    const-string v5, "param"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    .local v0, "par_param":Ljava/lang/String;
    if-nez v1, :cond_45

    .line 287
    const-string v1, ""

    .line 289
    :cond_45
    if-nez v0, :cond_49

    .line 290
    const-string v0, ""

    .line 292
    :cond_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "strOrderInfo":Ljava/lang/String;
    const-string v4, "LoginMgr.SetPayResultInfoForMSDK"

    invoke-static {v4, v2}, Lcom/ledo/fantasy/game/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v4, "LoginMgr.OnPayResultForMSDK"

    const-string v5, "1"

    invoke-static {v4, v5}, Lcom/ledo/fantasy/game/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 298
    .end local v0    # "par_param":Ljava/lang/String;
    .end local v1    # "par_sn":Ljava/lang/String;
    .end local v2    # "strOrderInfo":Ljava/lang/String;
    :pswitch_6d
    sget-object v4, Lcom/gm99/fzzj/MyPlatform;->TAG:Ljava/lang/String;

    const-string v5, "pay failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {v7}, Lcom/ledo/fantasy/game/JniProxy;->onBuyFinished(I)V

    .line 301
    const-string v4, "msdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/gm99/fzzj/MyPlatform$5$1;->val$info_payreg:Ljava/util/HashMap;

    if-eqz v4, :cond_15

    .line 302
    iget-object v4, p0, Lcom/gm99/fzzj/MyPlatform$5$1;->val$info_payreg:Ljava/util/HashMap;

    const-string v5, "sn"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 303
    .restart local v1    # "par_sn":Ljava/lang/String;
    iget-object v4, p0, Lcom/gm99/fzzj/MyPlatform$5$1;->val$info_payreg:Ljava/util/HashMap;

    const-string v5, "param"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    .restart local v0    # "par_param":Ljava/lang/String;
    if-nez v1, :cond_9b

    .line 305
    const-string v1, ""

    .line 307
    :cond_9b
    if-nez v0, :cond_9f

    .line 308
    const-string v0, ""

    .line 310
    :cond_9f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    .restart local v2    # "strOrderInfo":Ljava/lang/String;
    const-string v4, "LoginMgr.SetPayResultInfoForMSDK"

    invoke-static {v4, v2}, Lcom/ledo/fantasy/game/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v4, "LoginMgr.OnPayResultForMSDK"

    const-string v5, "2"

    invoke-static {v4, v5}, Lcom/ledo/fantasy/game/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 316
    .end local v0    # "par_param":Ljava/lang/String;
    .end local v1    # "par_sn":Ljava/lang/String;
    .end local v2    # "strOrderInfo":Ljava/lang/String;
    :pswitch_c4
    sget-object v4, Lcom/gm99/fzzj/MyPlatform;->TAG:Ljava/lang/String;

    const-string v5, "pay cancel"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-static {v7}, Lcom/ledo/fantasy/game/JniProxy;->onBuyFinished(I)V

    .line 319
    const-string v4, "msdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/gm99/fzzj/MyPlatform$5$1;->val$info_payreg:Ljava/util/HashMap;

    if-eqz v4, :cond_15

    .line 320
    iget-object v4, p0, Lcom/gm99/fzzj/MyPlatform$5$1;->val$info_payreg:Ljava/util/HashMap;

    const-string v5, "sn"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 321
    .restart local v1    # "par_sn":Ljava/lang/String;
    iget-object v4, p0, Lcom/gm99/fzzj/MyPlatform$5$1;->val$info_payreg:Ljava/util/HashMap;

    const-string v5, "param"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    .restart local v0    # "par_param":Ljava/lang/String;
    if-nez v1, :cond_f2

    .line 323
    const-string v1, ""

    .line 325
    :cond_f2
    if-nez v0, :cond_f6

    .line 326
    const-string v0, ""

    .line 328
    :cond_f6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    .restart local v2    # "strOrderInfo":Ljava/lang/String;
    const-string v4, "LoginMgr.SetPayResultInfoForMSDK"

    invoke-static {v4, v2}, Lcom/ledo/fantasy/game/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v4, "LoginMgr.OnPayResultForMSDK"

    const-string v5, "3"

    invoke-static {v4, v5}, Lcom/ledo/fantasy/game/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 334
    .end local v0    # "par_param":Ljava/lang/String;
    .end local v1    # "par_sn":Ljava/lang/String;
    .end local v2    # "strOrderInfo":Ljava/lang/String;
    :pswitch_11b
    sget-object v4, Lcom/gm99/fzzj/MyPlatform;->TAG:Ljava/lang/String;

    const-string v5, "pay order success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v4, "msdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/gm99/fzzj/MyPlatform$5$1;->val$info_payreg:Ljava/util/HashMap;

    if-eqz v4, :cond_15

    .line 337
    iget-object v4, p0, Lcom/gm99/fzzj/MyPlatform$5$1;->val$info_payreg:Ljava/util/HashMap;

    const-string v5, "sn"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 338
    .restart local v1    # "par_sn":Ljava/lang/String;
    iget-object v4, p0, Lcom/gm99/fzzj/MyPlatform$5$1;->val$info_payreg:Ljava/util/HashMap;

    const-string v5, "param"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    .restart local v0    # "par_param":Ljava/lang/String;
    if-nez v1, :cond_146

    .line 340
    const-string v1, ""

    .line 342
    :cond_146
    if-nez v0, :cond_14a

    .line 343
    const-string v0, ""

    .line 345
    :cond_14a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 346
    .restart local v2    # "strOrderInfo":Ljava/lang/String;
    const-string v4, "LoginMgr.OnPayOrderSucForMSDK"

    invoke-static {v4, v2}, Lcom/ledo/fantasy/game/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 350
    .end local v0    # "par_param":Ljava/lang/String;
    .end local v1    # "par_sn":Ljava/lang/String;
    .end local v2    # "strOrderInfo":Ljava/lang/String;
    :pswitch_168
    sget-object v4, Lcom/gm99/fzzj/MyPlatform;->TAG:Ljava/lang/String;

    const-string v5, "pay order fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 353
    :pswitch_171
    sget-object v4, Lcom/gm99/fzzj/MyPlatform;->TAG:Ljava/lang/String;

    const-string v5, "pay asyn sms sent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {v6}, Lcom/ledo/fantasy/game/JniProxy;->onBuyFinished(I)V

    goto/16 :goto_15

    .line 357
    :pswitch_17d
    sget-object v4, Lcom/gm99/fzzj/MyPlatform;->TAG:Ljava/lang/String;

    const-string v5, "pay submitted"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-static {v6}, Lcom/ledo/fantasy/game/JniProxy;->onBuyFinished(I)V

    goto/16 :goto_15

    .line 277
    nop

    :pswitch_data_18a
    .packed-switch 0x2
        :pswitch_16
        :pswitch_6d
        :pswitch_c4
        :pswitch_11b
        :pswitch_168
        :pswitch_171
        :pswitch_17d
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method
