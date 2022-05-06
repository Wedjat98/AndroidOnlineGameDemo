.class Lcom/games37/riversdk/core/net/DoRequestUtil$4;
.super Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;
.source "DoRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/net/DoRequestUtil;->uploadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/net/DoRequestUtil;

.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/NetCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isShowProgress:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/net/DoRequestUtil;Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;ZLandroid/content/Context;Ljava/lang/String;Lcom/games37/riversdk/core/callback/NetCallback;)V
    .registers 7
    .param p1, "this$0"    # Lcom/games37/riversdk/core/net/DoRequestUtil;

    .prologue
    .line 334
    .local p2, "x0":Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;, "Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->this$0:Lcom/games37/riversdk/core/net/DoRequestUtil;

    iput-boolean p3, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$isShowProgress:Z

    iput-object p4, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$url:Ljava/lang/String;

    iput-object p6, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$callback:Lcom/games37/riversdk/core/callback/NetCallback;

    invoke-direct {p0, p2}, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;-><init>(Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$isShowProgress:Z

    if-eqz v0, :cond_d

    .line 358
    iget-object v0, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->this$0:Lcom/games37/riversdk/core/net/DoRequestUtil;

    iget-object v1, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$url:Ljava/lang/String;

    # invokes: Lcom/games37/riversdk/core/net/DoRequestUtil;->sendDismissProgressMessage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/games37/riversdk/core/net/DoRequestUtil;->access$200(Lcom/games37/riversdk/core/net/DoRequestUtil;Landroid/content/Context;Ljava/lang/String;)V

    .line 361
    :cond_d
    const-string v0, "DoRequestUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadFile[url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] onFailure :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    iget-object v0, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$callback:Lcom/games37/riversdk/core/callback/NetCallback;

    if-eqz v0, :cond_3a

    .line 363
    iget-object v0, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$callback:Lcom/games37/riversdk/core/callback/NetCallback;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/games37/riversdk/core/callback/NetCallback;->callbackError(Ljava/lang/String;)V

    .line 365
    :cond_3a
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 334
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->onSuccess(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 8
    .param p1, "code"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 338
    iget-boolean v2, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$isShowProgress:Z

    if-eqz v2, :cond_d

    .line 339
    iget-object v2, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->this$0:Lcom/games37/riversdk/core/net/DoRequestUtil;

    iget-object v3, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$url:Ljava/lang/String;

    # invokes: Lcom/games37/riversdk/core/net/DoRequestUtil;->sendDismissProgressMessage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/games37/riversdk/core/net/DoRequestUtil;->access$200(Lcom/games37/riversdk/core/net/DoRequestUtil;Landroid/content/Context;Ljava/lang/String;)V

    .line 341
    :cond_d
    const-string v3, "DoRequestUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadFile[url="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] onSuccess code="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " result = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_54

    const-string v2, "null"

    :goto_3c
    invoke-static {v3, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$callback:Lcom/games37/riversdk/core/callback/NetCallback;

    if-eqz v2, :cond_53

    .line 345
    :try_start_49
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 346
    .local v1, "paramObject":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$callback:Lcom/games37/riversdk/core/callback/NetCallback;

    invoke-interface {v2, v1}, Lcom/games37/riversdk/core/callback/NetCallback;->callbackSuccess(Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_53} :catch_59

    .line 352
    .end local v1    # "paramObject":Lorg/json/JSONObject;
    :cond_53
    :goto_53
    return-void

    .line 342
    :cond_54
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3c

    .line 347
    :catch_59
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DoRequestUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadFile onSuccess parse error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$callback:Lcom/games37/riversdk/core/callback/NetCallback;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/games37/riversdk/core/callback/NetCallback;->callbackError(Ljava/lang/String;)V

    goto :goto_53
.end method

.method public onUIProgress(Lcom/games37/riversdk/net/okhttp/plus/model/Progress;)V
    .registers 8
    .param p1, "progress"    # Lcom/games37/riversdk/net/okhttp/plus/model/Progress;

    .prologue
    .line 369
    if-eqz p1, :cond_1b

    .line 370
    invoke-virtual {p1}, Lcom/games37/riversdk/net/okhttp/plus/model/Progress;->getCurrentBytes()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/games37/riversdk/net/okhttp/plus/model/Progress;->getTotalBytes()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    iget-boolean v2, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$isShowProgress:Z

    if-eqz v2, :cond_1b

    .line 372
    iget-object v2, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->this$0:Lcom/games37/riversdk/core/net/DoRequestUtil;

    iget-object v3, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$url:Ljava/lang/String;

    # invokes: Lcom/games37/riversdk/core/net/DoRequestUtil;->sendDismissProgressMessage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/games37/riversdk/core/net/DoRequestUtil;->access$200(Lcom/games37/riversdk/core/net/DoRequestUtil;Landroid/content/Context;Ljava/lang/String;)V

    .line 375
    :cond_1b
    invoke-virtual {p1}, Lcom/games37/riversdk/net/okhttp/plus/model/Progress;->getCurrentBytes()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/games37/riversdk/net/okhttp/plus/model/Progress;->getTotalBytes()J

    move-result-wide v4

    div-long/2addr v2, v4

    const-wide/16 v4, 0x64

    mul-long v0, v2, v4

    .line 376
    .local v0, "progressValue":J
    const-string v2, "DoRequestUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadFile[url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$4;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] onUIProgress progress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method
