.class public Lcom/iflytek/cloud/thirdparty/ap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/ap$a;
    }
.end annotation


# static fields
.field protected static a:Lcom/iflytek/cloud/thirdparty/ap;


# instance fields
.field private b:Lcom/iflytek/cloud/thirdparty/an;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ap;->a:Lcom/iflytek/cloud/thirdparty/ap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->b:Lcom/iflytek/cloud/thirdparty/an;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/an;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/thirdparty/an;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->b:Lcom/iflytek/cloud/thirdparty/an;

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/SpeechUnderstanderListener;)I
    .registers 6

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ap$a;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/thirdparty/ap$a;-><init>(Lcom/iflytek/cloud/thirdparty/ap;Lcom/iflytek/cloud/SpeechUnderstanderListener;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ap;->b:Lcom/iflytek/cloud/thirdparty/an;

    const-string v2, "asr_sch"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/an;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ap;->b:Lcom/iflytek/cloud/thirdparty/an;

    const-string v2, "asr_sch"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/an;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1c
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ap;->b:Lcom/iflytek/cloud/thirdparty/an;

    const-string v2, "nlp_version"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/an;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ap;->b:Lcom/iflytek/cloud/thirdparty/an;

    const-string v2, "nlp_version"

    const-string v3, "2.0"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/an;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_33
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ap;->b:Lcom/iflytek/cloud/thirdparty/an;

    const-string v2, "result_type"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/an;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ap;->b:Lcom/iflytek/cloud/thirdparty/an;

    const-string v2, "result_type"

    const-string v3, "json"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/an;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4a
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ap;->b:Lcom/iflytek/cloud/thirdparty/an;

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/an;->a(Lcom/iflytek/cloud/RecognizerListener;)I

    const/4 v0, 0x0

    return v0
.end method

.method public a([BII)I
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->b:Lcom/iflytek/cloud/thirdparty/an;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/an;->a([BII)I

    move-result v0

    return v0
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->b:Lcom/iflytek/cloud/thirdparty/an;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/an;->cancel(Z)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->b:Lcom/iflytek/cloud/thirdparty/an;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/an;->g()Z

    move-result v0

    return v0
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/af;)Z
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->b:Lcom/iflytek/cloud/thirdparty/an;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/an;->setParameter(Lcom/iflytek/cloud/thirdparty/af;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->b:Lcom/iflytek/cloud/thirdparty/an;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/an;->e()V

    return-void
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ap;->b:Lcom/iflytek/cloud/thirdparty/an;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/an;->destroy()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    sput-object v1, Lcom/iflytek/cloud/thirdparty/ap;->a:Lcom/iflytek/cloud/thirdparty/ap;

    :cond_b
    return v0
.end method
