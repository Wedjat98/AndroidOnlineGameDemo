.class public final Lmobi/androidcloud/lib/session/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private is:I

.field private je:I

.field private jf:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public Q(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 23
    new-instance v0, Lmobi/androidcloud/app/ptt/client/a;

    invoke-direct {v0}, Lmobi/androidcloud/app/ptt/client/a;-><init>()V

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "constructed caller "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    sget-object v1, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v1}, Lcom/talkray/arcvoice/client/b;->hG()Lmobi/androidcloud/lib/phone/a;

    move-result-object v1

    .line 33
    new-instance v2, Lmobi/androidcloud/lib/wire/control/n;

    invoke-direct {v2, v1, p1}, Lmobi/androidcloud/lib/wire/control/n;-><init>(Lmobi/androidcloud/lib/phone/a;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, v2}, Lmobi/androidcloud/app/ptt/client/a;->b(Lmobi/androidcloud/lib/wire/control/n;)Lmobi/tikl/wire/control/a$ap;

    move-result-object v0

    .line 37
    if-nez v0, :cond_22

    .line 38
    const/4 v0, 0x3

    .line 58
    :goto_21
    return v0

    .line 44
    :cond_22
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ap;->Gg()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 47
    const/4 v0, 0x2

    goto :goto_21

    .line 50
    :cond_2a
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ap;->jQ()I

    move-result v1

    iput v1, p0, Lmobi/androidcloud/lib/session/c;->je:I

    .line 51
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ap;->Gi()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobi/androidcloud/lib/session/c;->jf:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ap;->getDestPort()I

    move-result v0

    iput v0, p0, Lmobi/androidcloud/lib/session/c;->is:I

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lmobi/androidcloud/lib/session/c;->je:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobi/androidcloud/lib/session/c;->jf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmobi/androidcloud/lib/session/c;->is:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const/4 v0, 0x1

    goto :goto_21
.end method

.method public jQ()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lmobi/androidcloud/lib/session/c;->je:I

    return v0
.end method

.method public jR()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lmobi/androidcloud/lib/session/c;->jf:Ljava/lang/String;

    return-object v0
.end method

.method public jl()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lmobi/androidcloud/lib/session/c;->is:I

    return v0
.end method
