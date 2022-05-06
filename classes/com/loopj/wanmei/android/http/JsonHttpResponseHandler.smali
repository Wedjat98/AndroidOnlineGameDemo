.class public Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;
.super Lcom/loopj/wanmei/android/http/AsyncHttpResponseHandler;
.source "JsonHttpResponseHandler.java"


# static fields
.field protected static final SUCCESS_JSON_MESSAGE:I = 0x64


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/loopj/wanmei/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 176
    if-eqz p2, :cond_23

    .line 177
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->parseResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_10

    .line 179
    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, v0}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 191
    :goto_f
    return-void

    .line 180
    :cond_10
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_1f

    .line 181
    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {p0, p1, v0}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_19} :catch_1a

    goto :goto_f

    .line 188
    :catch_1a
    move-exception v0

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_f

    .line 183
    :cond_1f
    :try_start_1f
    invoke-virtual {p0, p1, p2}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_f

    .line 186
    :cond_23
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_28} :catch_1a

    goto :goto_f
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    .line 146
    invoke-super {p0, p1}, Lcom/loopj/wanmei/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 148
    :goto_8
    return-void

    .line 142
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 143
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [Lorg/apache/http/Header;

    check-cast v1, [Lorg/apache/http/Header;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {p0, v2, v1, v0}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->handleSuccessJsonMessage(I[Lorg/apache/http/Header;Ljava/lang/Object;)V

    goto :goto_8

    .line 140
    :pswitch_data_26
    .packed-switch 0x64
        :pswitch_9
    .end packed-switch
.end method

.method protected handleSuccessJsonMessage(I[Lorg/apache/http/Header;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 151
    instance-of v0, p3, Lorg/json/JSONObject;

    if-eqz v0, :cond_a

    .line 152
    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 158
    :goto_9
    return-void

    .line 153
    :cond_a
    instance-of v0, p3, Lorg/json/JSONArray;

    if-eqz v0, :cond_14

    .line 154
    check-cast p3, Lorg/json/JSONArray;

    invoke-virtual {p0, p1, p2, p3}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V

    goto :goto_9

    .line 156
    :cond_14
    new-instance v1, Lorg/json/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, v1, v0}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_9
.end method

.method public onFailure(Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .registers 3

    .prologue
    .line 112
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 111
    return-void
.end method

.method public onSuccess(ILorg/json/JSONArray;)V
    .registers 3

    .prologue
    .line 108
    invoke-virtual {p0, p2}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONArray;)V

    .line 109
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 85
    invoke-virtual {p0, p2}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONObject;)V

    .line 86
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V
    .registers 4

    .prologue
    .line 97
    invoke-virtual {p0, p1, p3}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONArray;)V

    .line 98
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 74
    invoke-virtual {p0, p1, p3}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 75
    return-void
.end method

.method public onSuccess(Lorg/json/JSONArray;)V
    .registers 2

    .prologue
    .line 63
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .registers 2

    .prologue
    .line 54
    return-void
.end method

.method protected parseResponse(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 164
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 165
    :cond_15
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 167
    :cond_1e
    if-nez v1, :cond_21

    .line 170
    :goto_20
    return-object v0

    :cond_21
    move-object v0, v1

    goto :goto_20
.end method

.method protected sendSuccessMessage(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/16 v4, 0x64

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_2c

    .line 123
    :try_start_9
    invoke-virtual {p0, p3}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->parseResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    const/16 v1, 0x64

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->sendMessage(Landroid/os/Message;)V
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_26} :catch_27

    .line 131
    :goto_26
    return-void

    .line 125
    :catch_27
    move-exception v0

    .line 126
    invoke-virtual {p0, v0, p3}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_26

    .line 129
    :cond_2c
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    aput-object v1, v0, v3

    invoke-virtual {p0, v4, v0}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/wanmei/android/http/JsonHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    goto :goto_26
.end method
