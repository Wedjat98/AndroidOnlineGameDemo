.class public Lcom/ledo/fantasy/game/LocalNotificationManager;
.super Ljava/lang/Object;
.source "LocalNotificationManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# static fields
.field public static s_activity:Landroid/app/Activity;

.field private static s_mapAlarmIDSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static s_strAppName:Ljava/lang/String;

.field public static s_strSuffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-string v0, "ledofantasy"

    sput-object v0, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_strSuffix:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_activity:Landroid/app/Activity;

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_strAppName:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_mapAlarmIDSet:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAlarmWithJson(Ljava/lang/String;)V
    .registers 14
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v10, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_activity:Landroid/app/Activity;

    if-nez v10, :cond_5

    .line 198
    :cond_4
    :goto_4
    return-void

    .line 137
    :cond_5
    const/4 v3, 0x0

    .line 140
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_b} :catch_73

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .local v4, "jsonObject":Lorg/json/JSONObject;
    move-object v3, v4

    .line 146
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :goto_c
    if-eqz v3, :cond_4

    .line 150
    const-string v8, ""

    .line 151
    .local v8, "par_ltimemilsec":Ljava/lang/String;
    const-string v5, ""

    .line 152
    .local v5, "par_alarmid":Ljava/lang/String;
    const-string v9, ""

    .line 155
    .local v9, "par_msg":Ljava/lang/String;
    :try_start_14
    const-string v10, "ltimemilsec"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 156
    const-string v10, "alarmid"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 157
    const-string v10, "msg"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_25} :catch_78

    move-result-object v9

    .line 164
    :goto_26
    if-nez v8, :cond_2a

    .line 165
    :try_start_28
    const-string v8, ""

    .line 167
    :cond_2a
    if-nez v5, :cond_2e

    .line 168
    const-string v5, ""

    .line 170
    :cond_2e
    if-nez v9, :cond_32

    .line 171
    const-string v9, ""
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_32} :catch_7d

    .line 178
    :cond_32
    :goto_32
    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 181
    const-wide/16 v6, 0x0

    .line 182
    .local v6, "ltimemilsec":J
    const/4 v0, 0x0

    .line 184
    .local v0, "alarmid":I
    :try_start_3d
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 185
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4c} :catch_82

    move-result v0

    .line 192
    sget-object v10, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_mapAlarmIDSet:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 193
    .local v1, "bValue":Ljava/lang/Boolean;
    if-eqz v1, :cond_61

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_6f

    .line 194
    :cond_61
    sget-object v10, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_mapAlarmIDSet:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_6f
    invoke-static {v6, v7, v0, v9}, Lcom/ledo/fantasy/game/LocalNotificationManager;->setAlarm(JILjava/lang/String;)V

    goto :goto_4

    .line 141
    .end local v0    # "alarmid":I
    .end local v1    # "bValue":Ljava/lang/Boolean;
    .end local v5    # "par_alarmid":Ljava/lang/String;
    .end local v6    # "ltimemilsec":J
    .end local v8    # "par_ltimemilsec":Ljava/lang/String;
    .end local v9    # "par_msg":Ljava/lang/String;
    :catch_73
    move-exception v2

    .line 143
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_c

    .line 158
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v5    # "par_alarmid":Ljava/lang/String;
    .restart local v8    # "par_ltimemilsec":Ljava/lang/String;
    .restart local v9    # "par_msg":Ljava/lang/String;
    :catch_78
    move-exception v2

    .line 160
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_26

    .line 173
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_7d
    move-exception v2

    .line 175
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32

    .line 186
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "alarmid":I
    .restart local v6    # "ltimemilsec":J
    :catch_82
    move-exception v2

    .line 188
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public static addRepeatingAlarmWithJson(Ljava/lang/String;)V
    .registers 19
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 201
    sget-object v15, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_activity:Landroid/app/Activity;

    if-nez v15, :cond_5

    .line 273
    :cond_4
    :goto_4
    return-void

    .line 205
    :cond_5
    const/4 v10, 0x0

    .line 208
    .local v10, "jsonObject":Lorg/json/JSONObject;
    :try_start_6
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_d} :catch_8d

    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .local v11, "jsonObject":Lorg/json/JSONObject;
    move-object v10, v11

    .line 214
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .restart local v10    # "jsonObject":Lorg/json/JSONObject;
    :goto_e
    if-eqz v10, :cond_4

    .line 218
    const-string v14, ""

    .line 219
    .local v14, "par_ltimemilsec":Ljava/lang/String;
    const-string v13, ""

    .line 220
    .local v13, "par_intervalsec":Ljava/lang/String;
    const-string v12, ""

    .line 221
    .local v12, "par_alarmid":Ljava/lang/String;
    const-string v7, ""

    .line 224
    .local v7, "par_msg":Ljava/lang/String;
    :try_start_18
    const-string v15, "ltimemilsec"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 225
    const-string v15, "intervalsec"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 226
    const-string v15, "alarmid"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 227
    const-string v15, "msg"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_2f} :catch_93

    move-result-object v7

    .line 234
    :goto_30
    if-nez v14, :cond_34

    .line 235
    :try_start_32
    const-string v14, ""

    .line 237
    :cond_34
    if-nez v13, :cond_38

    .line 238
    const-string v13, ""

    .line 240
    :cond_38
    if-nez v12, :cond_3c

    .line 241
    const-string v12, ""

    .line 243
    :cond_3c
    if-nez v7, :cond_40

    .line 244
    const-string v7, ""
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_40} :catch_98

    .line 251
    :cond_40
    :goto_40
    const-string v15, ""

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 254
    const-wide/16 v2, 0x0

    .line 255
    .local v2, "ltimemilsec":J
    const-wide/16 v4, 0x0

    .line 256
    .local v4, "lintervalsec":J
    const/4 v6, 0x0

    .line 258
    .local v6, "alarmid":I
    :try_start_4d
    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 259
    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 260
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_64} :catch_9d

    move-result v6

    .line 267
    sget-object v15, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_mapAlarmIDSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 268
    .local v8, "bValue":Ljava/lang/Boolean;
    if-eqz v8, :cond_79

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_88

    .line 269
    :cond_79
    sget-object v15, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_mapAlarmIDSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_88
    invoke-static/range {v2 .. v7}, Lcom/ledo/fantasy/game/LocalNotificationManager;->setRepeatingAlarm(JJILjava/lang/String;)V

    goto/16 :goto_4

    .line 209
    .end local v2    # "ltimemilsec":J
    .end local v4    # "lintervalsec":J
    .end local v6    # "alarmid":I
    .end local v7    # "par_msg":Ljava/lang/String;
    .end local v8    # "bValue":Ljava/lang/Boolean;
    .end local v12    # "par_alarmid":Ljava/lang/String;
    .end local v13    # "par_intervalsec":Ljava/lang/String;
    .end local v14    # "par_ltimemilsec":Ljava/lang/String;
    :catch_8d
    move-exception v9

    .line 211
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_e

    .line 228
    .end local v9    # "e":Lorg/json/JSONException;
    .restart local v7    # "par_msg":Ljava/lang/String;
    .restart local v12    # "par_alarmid":Ljava/lang/String;
    .restart local v13    # "par_intervalsec":Ljava/lang/String;
    .restart local v14    # "par_ltimemilsec":Ljava/lang/String;
    :catch_93
    move-exception v9

    .line 230
    .restart local v9    # "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_30

    .line 246
    .end local v9    # "e":Lorg/json/JSONException;
    :catch_98
    move-exception v9

    .line 248
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40

    .line 261
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v2    # "ltimemilsec":J
    .restart local v4    # "lintervalsec":J
    .restart local v6    # "alarmid":I
    :catch_9d
    move-exception v9

    .line 263
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public static init(Landroid/app/Activity;)V
    .registers 3
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 28
    sput-object p0, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_activity:Landroid/app/Activity;

    .line 30
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 31
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    sget v1, Lcom/ledo/fantasy/game/R$string;->ledo_fantasy_app_name:I

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_strAppName:Ljava/lang/String;

    .line 35
    :goto_14
    return-void

    .line 33
    :cond_15
    const-string v0, "\u6c38\u6052\u4e4b\u6b4c"

    sput-object v0, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_strAppName:Ljava/lang/String;

    goto :goto_14
.end method

.method private static removeAlarm(I)V
    .registers 9
    .param p0, "alarmid"    # I

    .prologue
    .line 324
    sget-object v5, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_activity:Landroid/app/Activity;

    if-nez v5, :cond_5

    .line 343
    :cond_4
    :goto_4
    return-void

    .line 328
    :cond_5
    :try_start_5
    sget-object v5, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_activity:Landroid/app/Activity;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 329
    .local v0, "alarmMgr":Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    sget-object v5, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/ledo/fantasy/game/LocalNotificationBroadcastReceiver;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    .local v3, "intent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_strSuffix:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    sget-object v5, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x8000000

    invoke-static {v5, p0, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 333
    .local v4, "pendIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 335
    sget-object v5, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_mapAlarmIDSet:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 336
    .local v1, "bValue":Ljava/lang/Boolean;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 337
    sget-object v5, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_mapAlarmIDSet:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_63} :catch_64

    goto :goto_4

    .line 340
    .end local v0    # "alarmMgr":Landroid/app/AlarmManager;
    .end local v1    # "bValue":Ljava/lang/Boolean;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "pendIntent":Landroid/app/PendingIntent;
    :catch_64
    move-exception v2

    .line 341
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public static removeAlarmWithJson(Ljava/lang/String;)V
    .registers 7
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 280
    const/4 v2, 0x0

    .line 283
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_a

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .local v3, "jsonObject":Lorg/json/JSONObject;
    move-object v2, v3

    .line 289
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_7
    if-nez v2, :cond_f

    .line 321
    :goto_9
    return-void

    .line 284
    :catch_a
    move-exception v1

    .line 286
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7

    .line 293
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_f
    const-string v4, ""

    .line 296
    .local v4, "par_alarmid":Ljava/lang/String;
    :try_start_11
    const-string v5, "alarmid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_16} :catch_28

    move-result-object v4

    .line 303
    :goto_17
    if-nez v4, :cond_1b

    .line 304
    :try_start_19
    const-string v4, ""
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1b} :catch_2d

    .line 311
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    .line 313
    .local v0, "alarmid":I
    :try_start_1c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_23} :catch_32

    move-result v0

    .line 320
    invoke-static {v0}, Lcom/ledo/fantasy/game/LocalNotificationManager;->removeAlarm(I)V

    goto :goto_9

    .line 297
    .end local v0    # "alarmid":I
    :catch_28
    move-exception v1

    .line 299
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_17

    .line 306
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_2d
    move-exception v1

    .line 308
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    .line 314
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "alarmid":I
    :catch_32
    move-exception v1

    .line 316
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public static removeAllAlarmWithJson(Ljava/lang/String;)V
    .registers 6
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 350
    sget-object v4, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_activity:Landroid/app/Activity;

    if-nez v4, :cond_5

    .line 362
    :cond_4
    return-void

    .line 353
    :cond_5
    sget-object v4, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_mapAlarmIDSet:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 354
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;>;"
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 355
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 356
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 357
    .local v2, "key":Ljava/lang/Integer;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 358
    .local v3, "val":Ljava/lang/Boolean;
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 359
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/ledo/fantasy/game/LocalNotificationManager;->removeAlarm(I)V

    goto :goto_f
.end method

.method private static setAlarm(JILjava/lang/String;)V
    .registers 10
    .param p0, "ltimemilsec"    # J
    .param p2, "alarmid"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-object v4, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_activity:Landroid/app/Activity;

    if-nez v4, :cond_5

    .line 57
    :goto_4
    return-void

    .line 42
    :cond_5
    sget-object v4, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_activity:Landroid/app/Activity;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 43
    .local v0, "alarmMgr":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    sget-object v4, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/ledo/fantasy/game/LocalNotificationBroadcastReceiver;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "classname"

    sget-object v5, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_activity:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v4, "content"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v4, "appname"

    sget-object v5, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_strAppName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v4, "iconid"

    sget v5, Lcom/ledo/fantasy/game/R$drawable;->ic_launcher_fantasy:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    const-string v4, "index"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_strSuffix:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    move v3, p2

    .line 55
    .local v3, "requestCode":I
    sget-object v4, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x8000000

    invoke-static {v4, v3, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 56
    .local v2, "pendIntent":Landroid/app/PendingIntent;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, p0, p1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_4
.end method

.method public static setAlarmSuffixWithJson(Ljava/lang/String;)V
    .registers 6
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 92
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_a

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 98
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_7
    if-nez v1, :cond_f

    .line 124
    :goto_9
    return-void

    .line 93
    :catch_a
    move-exception v0

    .line 95
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7

    .line 102
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_f
    const-string v3, ""

    .line 104
    .local v3, "par_suffix":Ljava/lang/String;
    :try_start_11
    const-string v4, "suffix"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_16} :catch_28

    move-result-object v3

    .line 111
    :goto_17
    if-nez v3, :cond_1b

    .line 112
    :try_start_19
    const-string v3, ""
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1b} :catch_2d

    .line 119
    :cond_1b
    :goto_1b
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 120
    const-string v4, "ledofantasy"

    sput-object v4, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_strSuffix:Ljava/lang/String;

    goto :goto_9

    .line 105
    :catch_28
    move-exception v0

    .line 107
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_17

    .line 114
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2d
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_32
    sput-object v3, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_strSuffix:Ljava/lang/String;

    goto :goto_9
.end method

.method private static setRepeatingAlarm(JJILjava/lang/String;)V
    .registers 16
    .param p0, "ltimemilsec"    # J
    .param p2, "repeatingTime"    # J
    .param p4, "alarmid"    # I
    .param p5, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 60
    sget-object v2, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_activity:Landroid/app/Activity;

    if-nez v2, :cond_6

    .line 82
    :goto_5
    return-void

    .line 64
    :cond_6
    sget-object v2, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_activity:Landroid/app/Activity;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 65
    .local v0, "alarmMgr":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    sget-object v2, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ledo/fantasy/game/LocalNotificationBroadcastReceiver;

    invoke-direct {v7, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v7, "intent":Landroid/content/Intent;
    const-string v2, "classname"

    sget-object v3, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_activity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v2, "content"

    invoke-virtual {v7, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v2, "appname"

    sget-object v3, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_strAppName:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v2, "largeiconid"

    sget v3, Lcom/ledo/fantasy/game/R$drawable;->ic_launcher_fantasy:I

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v2

    sget v3, Lcom/ledo/fantasy/game/R$string;->platform_suffix:I

    invoke-virtual {v2, v3}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "iwag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v2

    sget v3, Lcom/ledo/fantasy/game/R$string;->platform_suffix:I

    invoke-virtual {v2, v3}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "iwad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 72
    :cond_63
    const-string v2, "smalliconid"

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    const-string v4, "R.drawable.sdk_notification_smallicon"

    invoke-virtual {v3, v4}, Lcom/ledo/fantasy/game/GameApp;->getUpdateResourceId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    :goto_72
    const-string v2, "index"

    invoke-virtual {v7, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_strSuffix:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    move v8, p4

    .line 80
    .local v8, "requestCode":I
    sget-object v2, Lcom/ledo/fantasy/game/LocalNotificationManager;->s_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v2, v8, v7, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .local v6, "pendIntent":Landroid/app/PendingIntent;
    move-wide v2, p0

    move-wide v4, p2

    .line 81
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_5

    .line 74
    .end local v6    # "pendIntent":Landroid/app/PendingIntent;
    .end local v8    # "requestCode":I
    :cond_a1
    const-string v2, "smalliconid"

    invoke-virtual {v7, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_72
.end method
