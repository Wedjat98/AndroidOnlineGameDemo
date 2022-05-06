.class public final Lsdkplugin/framework/protocol/PluginIAP;
.super Lonlysdk/framework/protocol/OnlySDKIAP;
.source "PluginIAP.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Lonlysdk/framework/protocol/OnlySDKIAP;-><init>()V

    .line 19
    const-string v0, "gm99"

    iput-object v0, p0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lsdkplugin/framework/protocol/PluginIAP;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginIAP;->_activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getPluginVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    const-string v0, "2.0.0"

    return-object v0
.end method

.method public isSupportFunction()Z
    .registers 2

    .prologue
    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public payForProduct(Ljava/util/HashMap;)V
    .registers 37
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

    .prologue
    .line 61
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 325
    :goto_2
    return-void

    .line 65
    :cond_3
    const-string v1, "orderNo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 66
    .local v18, "orderNo":Ljava/lang/String;
    const-string v1, "itemId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 67
    .local v28, "str_itemId":Ljava/lang/String;
    const-string v1, "itemName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 68
    .local v15, "itemName":Ljava/lang/String;
    const-string v1, "itemNum"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 69
    .local v29, "str_itemNum":Ljava/lang/String;
    const-string v1, "price"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 70
    .local v30, "str_price":Ljava/lang/String;
    const-string v1, "serviceID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 71
    .local v32, "str_serviceID":Ljava/lang/String;
    const-string v1, "payType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 72
    .local v20, "payType":Ljava/lang/String;
    const-string v1, "roleName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 73
    .local v26, "roleName":Ljava/lang/String;
    const-string v1, "roleID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 74
    .local v24, "roleID":Ljava/lang/String;
    const-string v1, "rate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 75
    .local v23, "rate":Ljava/lang/String;
    const-string v1, "roleLevel"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 76
    .local v31, "str_roleLevel":Ljava/lang/String;
    const-string v1, "userID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 77
    .local v33, "userID":Ljava/lang/String;
    const-string v1, "accessToken"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 78
    .local v9, "accessToken":Ljava/lang/String;
    const-string v1, "payCallbackURL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 79
    .local v19, "payCallbackURL":Ljava/lang/String;
    const-string v1, "appName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 80
    .local v10, "appName":Ljava/lang/String;
    const-string v14, ""

    .line 83
    .local v14, "itemKind":Ljava/lang/String;
    :try_start_9b
    const-string v1, "itemKind"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v14, v0
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a7} :catch_225

    .line 89
    :goto_a7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_isDebugMode:Z

    if-eqz v1, :cond_166

    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    const-string v2, "payForProduct"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-nez v18, :cond_22b

    .line 94
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    const-string v2, "orderNo: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_c1
    if-nez v28, :cond_247

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    const-string v2, "itemId: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_cc
    if-nez v15, :cond_263

    .line 106
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    const-string v2, "itemName: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_d7
    if-nez v29, :cond_27d

    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    const-string v2, "itemNum: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_e2
    if-nez v30, :cond_299

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    const-string v2, "price: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_ed
    if-nez v32, :cond_2b5

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    const-string v2, "serviceID: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_f8
    if-nez v20, :cond_2d1

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    const-string v2, "payType: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_103
    if-nez v26, :cond_2ed

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    const-string v2, "roleName: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_10e
    if-nez v24, :cond_309

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    const-string v2, "roleID: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_119
    if-nez v23, :cond_325

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    const-string v2, "rate: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_124
    if-nez v31, :cond_341

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    const-string v2, "str_roleLevel: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_12f
    if-nez v33, :cond_35d

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    const-string v2, "userID: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_13a
    if-nez v9, :cond_379

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    const-string v2, "accessToken: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_145
    if-nez v19, :cond_393

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    const-string v2, "payCallbackURL: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_150
    if-nez v10, :cond_3af

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    const-string v2, "appName: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_15b
    if-nez v14, :cond_3c9

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    const-string v2, "itemKind: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_166
    :goto_166
    if-nez v18, :cond_16a

    .line 191
    const-string v18, ""

    .line 194
    :cond_16a
    const/4 v13, 0x0

    .line 195
    .local v13, "itemId":I
    if-eqz v28, :cond_17f

    const-string v1, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17f

    .line 198
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 201
    :cond_17f
    if-nez v15, :cond_183

    .line 202
    const-string v15, ""

    .line 205
    :cond_183
    const/16 v16, 0x1

    .line 206
    .local v16, "itemNum":I
    if-eqz v29, :cond_199

    const-string v1, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_199

    .line 209
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 212
    :cond_199
    const/16 v21, 0x0

    .line 213
    .local v21, "price":F
    if-eqz v30, :cond_1af

    const-string v1, ""

    move-object/from16 v0, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1af

    .line 216
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v21

    .line 219
    :cond_1af
    const/16 v27, 0x0

    .line 220
    .local v27, "serviceID":I
    if-eqz v32, :cond_1c5

    const-string v1, ""

    move-object/from16 v0, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c5

    .line 223
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 226
    :cond_1c5
    if-nez v20, :cond_1c9

    .line 227
    const-string v20, ""

    .line 230
    :cond_1c9
    if-nez v26, :cond_1cd

    .line 231
    const-string v26, ""

    .line 234
    :cond_1cd
    if-nez v24, :cond_1d1

    .line 235
    const-string v24, ""

    .line 238
    :cond_1d1
    if-nez v23, :cond_1d5

    .line 239
    const-string v23, ""

    .line 242
    :cond_1d5
    const/16 v25, 0x0

    .line 243
    .local v25, "roleLevel":I
    if-eqz v31, :cond_1e3

    const-string v1, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e3

    .line 244
    :cond_1e3
    const-string v31, "0"

    .line 249
    :goto_1e5
    if-nez v33, :cond_1e9

    .line 250
    const-string v33, ""

    .line 253
    :cond_1e9
    if-nez v9, :cond_1ed

    .line 254
    const-string v9, ""

    .line 257
    :cond_1ed
    if-nez v19, :cond_1f1

    .line 258
    const-string v19, ""

    .line 261
    :cond_1f1
    if-nez v10, :cond_1f5

    .line 262
    const-string v10, ""

    .line 265
    :cond_1f5
    const-string v1, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    if-nez v14, :cond_200

    .line 270
    const-string v14, ""

    .line 274
    :cond_200
    move-object v7, v14

    .line 275
    .local v7, "item_id_final":Ljava/lang/String;
    move-object/from16 v22, v30

    .line 276
    .local v22, "price_final":Ljava/lang/String;
    move-object/from16 v6, v32

    .line 277
    .local v6, "server_id_final":Ljava/lang/String;
    move-object/from16 v4, v26

    .line 278
    .local v4, "role_name_final":Ljava/lang/String;
    move-object/from16 v3, v24

    .line 279
    .local v3, "role_id_final":Ljava/lang/String;
    move-object/from16 v5, v31

    .line 280
    .local v5, "role_level_final":Ljava/lang/String;
    move-object/from16 v17, v29

    .line 281
    .local v17, "item_num_final":Ljava/lang/String;
    move-object/from16 v8, v18

    .line 282
    .local v8, "order_no_final":Ljava/lang/String;
    const-string v12, ""

    .line 283
    .local v12, "extraparameter":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsdkplugin/framework/protocol/PluginIAP;->_activity:Landroid/app/Activity;

    move-object/from16 v34, v0

    new-instance v1, Lsdkplugin/framework/protocol/PluginIAP$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lsdkplugin/framework/protocol/PluginIAP$1;-><init>(Lsdkplugin/framework/protocol/PluginIAP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 84
    .end local v3    # "role_id_final":Ljava/lang/String;
    .end local v4    # "role_name_final":Ljava/lang/String;
    .end local v5    # "role_level_final":Ljava/lang/String;
    .end local v6    # "server_id_final":Ljava/lang/String;
    .end local v7    # "item_id_final":Ljava/lang/String;
    .end local v8    # "order_no_final":Ljava/lang/String;
    .end local v12    # "extraparameter":Ljava/lang/String;
    .end local v13    # "itemId":I
    .end local v16    # "itemNum":I
    .end local v17    # "item_num_final":Ljava/lang/String;
    .end local v21    # "price":F
    .end local v22    # "price_final":Ljava/lang/String;
    .end local v25    # "roleLevel":I
    .end local v27    # "serviceID":I
    :catch_225
    move-exception v11

    .line 86
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a7

    .line 96
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_22b
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v34, "orderNo: "

    move-object/from16 v0, v34

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c1

    .line 102
    :cond_247
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v34, "itemId: "

    move-object/from16 v0, v34

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cc

    .line 108
    :cond_263
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v34, "itemName: "

    move-object/from16 v0, v34

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d7

    .line 114
    :cond_27d
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v34, "itemNum: "

    move-object/from16 v0, v34

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e2

    .line 120
    :cond_299
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v34, "price: "

    move-object/from16 v0, v34

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ed

    .line 126
    :cond_2b5
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v34, "serviceID: "

    move-object/from16 v0, v34

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f8

    .line 132
    :cond_2d1
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v34, "payType: "

    move-object/from16 v0, v34

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_103

    .line 138
    :cond_2ed
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v34, "roleName: "

    move-object/from16 v0, v34

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10e

    .line 144
    :cond_309
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v34, "roleID: "

    move-object/from16 v0, v34

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_119

    .line 150
    :cond_325
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v34, "rate: "

    move-object/from16 v0, v34

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_124

    .line 156
    :cond_341
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v34, "str_roleLevel: "

    move-object/from16 v0, v34

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12f

    .line 162
    :cond_35d
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v34, "userID: "

    move-object/from16 v0, v34

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13a

    .line 168
    :cond_379
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v34, "accessToken: "

    move-object/from16 v0, v34

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_145

    .line 174
    :cond_393
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v34, "payCallbackURL: "

    move-object/from16 v0, v34

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_150

    .line 180
    :cond_3af
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v34, "appName: "

    move-object/from16 v0, v34

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15b

    .line 186
    :cond_3c9
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginIAP;->_channelName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v34, "itemKind: "

    move-object/from16 v0, v34

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_166

    .line 246
    .restart local v13    # "itemId":I
    .restart local v16    # "itemNum":I
    .restart local v21    # "price":F
    .restart local v25    # "roleLevel":I
    .restart local v27    # "serviceID":I
    :cond_3e3
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v25

    goto/16 :goto_1e5
.end method

.method public releaseData()V
    .registers 1

    .prologue
    .line 32
    invoke-super {p0}, Lonlysdk/framework/protocol/OnlySDKIAP;->releaseData()V

    .line 35
    return-void
.end method
