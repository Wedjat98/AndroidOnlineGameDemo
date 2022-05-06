.class Lcom/qiniu/android/http/Client$5;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/squareup/okhttp/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/Client;->asyncSend(Lcom/squareup/okhttp/Request$Builder;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/Client;

.field final synthetic val$complete:Lcom/qiniu/android/http/CompletionHandler;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/Client;JLcom/qiniu/android/http/CompletionHandler;)V
    .registers 5
    .param p1, "this$0"    # Lcom/qiniu/android/http/Client;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/qiniu/android/http/Client$5;->this$0:Lcom/qiniu/android/http/Client;

    iput-wide p2, p0, Lcom/qiniu/android/http/Client$5;->val$start:J

    iput-object p4, p0, Lcom/qiniu/android/http/Client$5;->val$complete:Lcom/qiniu/android/http/CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
    .registers 23
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 153
    invoke-virtual/range {p2 .. p2}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/qiniu/android/http/Client$5;->val$start:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v18, v6, v8

    .line 155
    .local v18, "duration":J
    const/4 v4, -0x1

    .line 156
    .local v4, "statusCode":I
    invoke-virtual/range {p2 .. p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "msg":Ljava/lang/String;
    move-object/from16 v0, p2

    instance-of v5, v0, Lcom/qiniu/android/http/CancellationHandler$CancellationException;

    if-eqz v5, :cond_4b

    .line 158
    const/4 v4, -0x2

    .line 169
    :cond_1c
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v17

    .line 170
    .local v17, "u":Ljava/net/URL;
    new-instance v3, Lcom/qiniu/android/http/ResponseInfo;

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->getPort()I

    move-result v11

    move-wide/from16 v0, v18

    long-to-double v12, v0

    const-wide/16 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v3 .. v16}, Lcom/qiniu/android/http/ResponseInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/String;)V

    .line 172
    .local v3, "info":Lcom/qiniu/android/http/ResponseInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qiniu/android/http/Client$5;->val$complete:Lcom/qiniu/android/http/CompletionHandler;

    const/4 v6, 0x0

    invoke-interface {v5, v3, v6}, Lcom/qiniu/android/http/CompletionHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    .line 173
    return-void

    .line 159
    .end local v3    # "info":Lcom/qiniu/android/http/ResponseInfo;
    .end local v17    # "u":Ljava/net/URL;
    :cond_4b
    move-object/from16 v0, p2

    instance-of v5, v0, Ljava/net/UnknownHostException;

    if-eqz v5, :cond_54

    .line 160
    const/16 v4, -0x3eb

    goto :goto_1c

    .line 161
    :cond_54
    if-eqz v2, :cond_61

    const-string v5, "Broken pipe"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_61

    .line 162
    const/16 v4, -0x3ed

    goto :goto_1c

    .line 163
    :cond_61
    move-object/from16 v0, p2

    instance-of v5, v0, Ljava/net/SocketTimeoutException;

    if-eqz v5, :cond_6a

    .line 164
    const/16 v4, -0x3e9

    goto :goto_1c

    .line 165
    :cond_6a
    move-object/from16 v0, p2

    instance-of v5, v0, Ljava/net/ConnectException;

    if-eqz v5, :cond_1c

    .line 166
    const/16 v4, -0x3ec

    goto :goto_1c
.end method

.method public onResponse(Lcom/squareup/okhttp/Response;)V
    .registers 10
    .param p1, "response"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/qiniu/android/http/Client$5;->val$start:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    div-long v4, v2, v6

    .line 178
    .local v4, "duration":J
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/http/Client$IpTag;

    .line 179
    .local v0, "tag":Lcom/qiniu/android/http/Client$IpTag;
    iget-object v1, p0, Lcom/qiniu/android/http/Client$5;->this$0:Lcom/qiniu/android/http/Client;

    iget-object v3, v0, Lcom/qiniu/android/http/Client$IpTag;->ip:Ljava/lang/String;

    iget-object v6, p0, Lcom/qiniu/android/http/Client$5;->val$complete:Lcom/qiniu/android/http/CompletionHandler;

    move-object v2, p1

    # invokes: Lcom/qiniu/android/http/Client;->onRet(Lcom/squareup/okhttp/Response;Ljava/lang/String;JLcom/qiniu/android/http/CompletionHandler;)V
    invoke-static/range {v1 .. v6}, Lcom/qiniu/android/http/Client;->access$100(Lcom/qiniu/android/http/Client;Lcom/squareup/okhttp/Response;Ljava/lang/String;JLcom/qiniu/android/http/CompletionHandler;)V

    .line 180
    return-void
.end method
