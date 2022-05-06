.class public abstract Lcom/iflytek/cloud/thirdparty/D;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/D$a;
    }
.end annotation


# instance fields
.field protected b:Lcom/iflytek/cloud/thirdparty/af;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/af;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/af;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/D;->b:Lcom/iflytek/cloud/thirdparty/af;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/iflytek/speech/ISpeechModule;)Lcom/iflytek/cloud/thirdparty/D$a;
    .registers 6

    const-string v0, "engine_mode"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/D;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->a:Lcom/iflytek/cloud/thirdparty/D$a;

    :goto_10
    return-object v0

    :cond_11
    const-string v1, "plus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->b:Lcom/iflytek/cloud/thirdparty/D$a;

    goto :goto_10

    :cond_1c
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->a:Lcom/iflytek/cloud/thirdparty/D$a;

    goto :goto_10

    :cond_25
    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->getEngineMode()Lcom/iflytek/cloud/thirdparty/D$a;

    move-result-object v1

    sget-object v2, Lcom/iflytek/cloud/thirdparty/D$a;->c:Lcom/iflytek/cloud/thirdparty/D$a;

    if-eq v1, v2, :cond_32

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->getEngineMode()Lcom/iflytek/cloud/thirdparty/D$a;

    move-result-object v0

    goto :goto_10

    :cond_32
    invoke-static {}, Lcom/iflytek/msc/MSC;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_3b

    sget-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->b:Lcom/iflytek/cloud/thirdparty/D$a;

    goto :goto_10

    :cond_3b
    const-string v0, "engine_type"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/D;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    sget-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->b:Lcom/iflytek/cloud/thirdparty/D$a;

    goto :goto_10

    :cond_4c
    const-string v1, "mix"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    if-eqz p2, :cond_5c

    invoke-interface {p2}, Lcom/iflytek/speech/ISpeechModule;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_5f

    :cond_5c
    sget-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->a:Lcom/iflytek/cloud/thirdparty/D$a;

    goto :goto_10

    :cond_5f
    sget-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->b:Lcom/iflytek/cloud/thirdparty/D$a;

    goto :goto_10

    :cond_62
    sget-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->a:Lcom/iflytek/cloud/thirdparty/D$a;

    goto :goto_10
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "params"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/D;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/af;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/D;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public setParameter(Lcom/iflytek/cloud/thirdparty/af;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/af;->b()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/D;->b:Lcom/iflytek/cloud/thirdparty/af;

    const/4 v0, 0x1

    return v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    const-string v1, "params"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/D;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/af;->a()V

    goto :goto_8

    :cond_1d
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/D;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v1, p2}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;)V

    goto :goto_8

    :cond_23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/D;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/af;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_8

    :cond_34
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/D;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v1, p1, p2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method
