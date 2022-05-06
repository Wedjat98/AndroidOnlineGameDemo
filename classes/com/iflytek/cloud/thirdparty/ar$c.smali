.class Lcom/iflytek/cloud/thirdparty/ar$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/thirdparty/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/ar;

.field private b:Lcom/iflytek/cloud/RequestListener;

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Z

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/ar;ZLcom/iflytek/cloud/RequestListener;)V
    .registers 6

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->a:Lcom/iflytek/cloud/thirdparty/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->b:Lcom/iflytek/cloud/RequestListener;

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->e:I

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->f:Z

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ar$c$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/thirdparty/ar$c$1;-><init>(Lcom/iflytek/cloud/thirdparty/ar$c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->g:Landroid/os/Handler;

    iput-boolean p2, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->f:Z

    iput-object p3, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->b:Lcom/iflytek/cloud/RequestListener;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/ar$c;)Lcom/iflytek/cloud/RequestListener;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->b:Lcom/iflytek/cloud/RequestListener;

    return-object v0
.end method


# virtual methods
.method public onBufferReceived([B)V
    .registers 9

    const-string v0, "onCompleted"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    :try_start_5
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->f:Z

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->a:Lcom/iflytek/cloud/thirdparty/ar;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ar;->a(Lcom/iflytek/cloud/thirdparty/ar;)Z

    move-result v0

    if-eqz v0, :cond_8a

    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "dlurl"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "md5"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resName:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->a:Lcom/iflytek/cloud/thirdparty/ar;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ar;->b(Lcom/iflytek/cloud/thirdparty/ar;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/iflytek/cloud/thirdparty/R;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto download path:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->a:Lcom/iflytek/cloud/thirdparty/ar;

    iget-boolean v4, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->f:Z

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/cloud/util/FileDownloadListener;)I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->a:Lcom/iflytek/cloud/thirdparty/ar;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ar;->c(Lcom/iflytek/cloud/thirdparty/ar;)Lcom/iflytek/cloud/thirdparty/M;

    move-result-object v0

    const-string v1, "cfg_threstemp"

    const-string v2, "thresholder"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/M;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8a} :catch_97

    :cond_8a
    :goto_8a
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_97
    move-exception v0

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e2e

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/ar$c;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_8a
.end method

.method public onCompleted(Lcom/iflytek/cloud/SpeechError;)V
    .registers 4

    const-string v0, "RequestResult"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->g:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 6

    const/4 v2, 0x0

    const-string v0, "RequestResult"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->g:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar$c;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
