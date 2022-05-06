.class public Lcom/iflytek/cloud/thirdparty/aj;
.super Lcom/iflytek/cloud/thirdparty/D;


# instance fields
.field a:Lcom/iflytek/cloud/thirdparty/U$a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Lcom/iflytek/cloud/thirdparty/U;

.field private g:Lcom/iflytek/cloud/RequestListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/D;-><init>()V

    const-string v0, "http://openapi.openspeech.cn/webapi/wfr.do"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aj;->c:Ljava/lang/String;

    const-string v0, "pver=1.0"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aj;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/aj;->e:Landroid/content/Context;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/aj;->f:Lcom/iflytek/cloud/thirdparty/U;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/aj$1;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/aj$1;-><init>(Lcom/iflytek/cloud/thirdparty/aj;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aj;->a:Lcom/iflytek/cloud/thirdparty/U$a;

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/aj;->b:Lcom/iflytek/cloud/thirdparty/af;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/aj;->e:Landroid/content/Context;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/U;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/U;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aj;->f:Lcom/iflytek/cloud/thirdparty/U;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/aj;)Lcom/iflytek/cloud/RequestListener;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aj;->g:Lcom/iflytek/cloud/RequestListener;

    return-object v0
.end method


# virtual methods
.method public a([BLcom/iflytek/cloud/RequestListener;)I
    .registers 9

    :try_start_0
    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/aj;->g:Lcom/iflytek/cloud/RequestListener;

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-nez v0, :cond_b

    const/16 v0, 0x277f

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aj;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "server_url"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aj;->c:Ljava/lang/String;

    :cond_1b
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aj;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/aj;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/ah;->c(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/aj;->f:Lcom/iflytek/cloud/thirdparty/U;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/aj;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v4, "timeout"

    const/16 v5, 0x4e20

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/thirdparty/U;->b(I)V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/aj;->f:Lcom/iflytek/cloud/thirdparty/U;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/thirdparty/U;->a(I)V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/aj;->f:Lcom/iflytek/cloud/thirdparty/U;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/aj;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, p1, v1}, Lcom/iflytek/cloud/thirdparty/U;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aj;->f:Lcom/iflytek/cloud/thirdparty/U;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/aj;->a:Lcom/iflytek/cloud/thirdparty/U$a;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/U;->a(Lcom/iflytek/cloud/thirdparty/U$a;)V

    const-string v0, "LastDataFlag"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4e

    const/4 v0, 0x0

    goto :goto_a

    :catch_4e
    move-exception v0

    const/16 v0, 0x5207

    goto :goto_a
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aj;->f:Lcom/iflytek/cloud/thirdparty/U;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/U;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aj;->f:Lcom/iflytek/cloud/thirdparty/U;

    return-void
.end method
