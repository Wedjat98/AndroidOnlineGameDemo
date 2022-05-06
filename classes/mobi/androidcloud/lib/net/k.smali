.class public final Lmobi/androidcloud/lib/net/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private iv:Lmobi/androidcloud/lib/wire/control/a;

.field private iw:Lmobi/androidcloud/lib/wire/control/d;


# direct methods
.method public constructor <init>(Lmobi/androidcloud/lib/wire/control/a;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    .line 21
    return-void
.end method

.method public constructor <init>(Lmobi/androidcloud/lib/wire/control/d;)V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    .line 25
    return-void
.end method


# virtual methods
.method public N(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_9

    .line 161
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    iput-object p1, v0, Lmobi/androidcloud/lib/wire/control/a;->ko:Ljava/lang/String;

    .line 164
    :goto_8
    return-void

    .line 163
    :cond_9
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    iput-object p1, v0, Lmobi/androidcloud/lib/wire/control/d;->ko:Ljava/lang/String;

    goto :goto_8
.end method

.method public O(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_9

    .line 175
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    iput-object p1, v0, Lmobi/androidcloud/lib/wire/control/a;->kp:Ljava/lang/String;

    .line 178
    :goto_8
    return-void

    .line 177
    :cond_9
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    iput-object p1, v0, Lmobi/androidcloud/lib/wire/control/d;->kp:Ljava/lang/String;

    goto :goto_8
.end method

.method public P(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_9

    .line 189
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    iput-object p1, v0, Lmobi/androidcloud/lib/wire/control/a;->kq:Ljava/lang/String;

    .line 192
    :goto_8
    return-void

    .line 191
    :cond_9
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    iput-object p1, v0, Lmobi/androidcloud/lib/wire/control/d;->kq:Ljava/lang/String;

    goto :goto_8
.end method

.method public a(Lmobi/androidcloud/lib/wire/control/a$a;)V
    .registers 3

    .prologue
    .line 286
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_9

    .line 287
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    iput-object p1, v0, Lmobi/androidcloud/lib/wire/control/a;->kw:Lmobi/androidcloud/lib/wire/control/a$a;

    .line 290
    :goto_8
    return-void

    .line 289
    :cond_9
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    iput-object p1, v0, Lmobi/androidcloud/lib/wire/control/d;->kw:Lmobi/androidcloud/lib/wire/control/a$a;

    goto :goto_8
.end method

.method public an(I)V
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_9

    .line 231
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    iput p1, v0, Lmobi/androidcloud/lib/wire/control/a;->ks:I

    .line 234
    :goto_8
    return-void

    .line 233
    :cond_9
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    iput p1, v0, Lmobi/androidcloud/lib/wire/control/d;->ks:I

    goto :goto_8
.end method

.method public ao(I)V
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_9

    .line 245
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    iput p1, v0, Lmobi/androidcloud/lib/wire/control/a;->kt:I

    .line 248
    :goto_8
    return-void

    .line 247
    :cond_9
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    iput p1, v0, Lmobi/androidcloud/lib/wire/control/d;->kt:I

    goto :goto_8
.end method

.method public d(Lmobi/androidcloud/lib/phone/a;)V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_9

    .line 105
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    iput-object p1, v0, Lmobi/androidcloud/lib/wire/control/a;->kl:Lmobi/androidcloud/lib/phone/a;

    .line 108
    :goto_8
    return-void

    .line 107
    :cond_9
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    iput-object p1, v0, Lmobi/androidcloud/lib/wire/control/d;->kl:Lmobi/androidcloud/lib/phone/a;

    goto :goto_8
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 385
    instance-of v1, p1, Lmobi/androidcloud/lib/net/k;

    if-eqz v1, :cond_3c

    .line 386
    check-cast p1, Lmobi/androidcloud/lib/net/k;

    .line 387
    invoke-virtual {p0}, Lmobi/androidcloud/lib/net/k;->jn()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->jn()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Lmobi/androidcloud/lib/net/k;->jo()Lmobi/androidcloud/lib/wire/control/a;

    move-result-object v1

    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->jo()Lmobi/androidcloud/lib/wire/control/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/androidcloud/lib/wire/control/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 397
    :cond_21
    :goto_21
    return v0

    .line 390
    :cond_22
    invoke-virtual {p0}, Lmobi/androidcloud/lib/net/k;->jm()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->jm()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {p0}, Lmobi/androidcloud/lib/net/k;->jp()Lmobi/androidcloud/lib/wire/control/d;

    move-result-object v1

    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->jp()Lmobi/androidcloud/lib/wire/control/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/androidcloud/lib/wire/control/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 397
    :cond_3c
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_9

    .line 224
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    iget v0, v0, Lmobi/androidcloud/lib/wire/control/a;->length:I

    .line 226
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    iget v0, v0, Lmobi/androidcloud/lib/wire/control/d;->length:I

    goto :goto_8
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_9

    .line 126
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    iget-object v0, v0, Lmobi/androidcloud/lib/wire/control/a;->message:Ljava/lang/String;

    .line 128
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    iget-object v0, v0, Lmobi/androidcloud/lib/wire/control/d;->message:Ljava/lang/String;

    goto :goto_8
.end method

.method public getMsgId()I
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_9

    .line 98
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    iget v0, v0, Lmobi/androidcloud/lib/wire/control/a;->msgId:I

    .line 100
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    iget v0, v0, Lmobi/androidcloud/lib/wire/control/d;->msgId:I

    goto :goto_8
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_9

    .line 154
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    iget-object v0, v0, Lmobi/androidcloud/lib/wire/control/a;->url:Ljava/lang/String;

    .line 156
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    iget-object v0, v0, Lmobi/androidcloud/lib/wire/control/d;->url:Ljava/lang/String;

    goto :goto_8
.end method

.method public jm()Z
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public jn()Z
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public jo()Lmobi/androidcloud/lib/wire/control/a;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    return-object v0
.end method

.method public jp()Lmobi/androidcloud/lib/wire/control/d;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    return-object v0
.end method

.method public jq()Lmobi/androidcloud/lib/phone/a;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_9

    .line 112
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    iget-object v0, v0, Lmobi/androidcloud/lib/wire/control/a;->kl:Lmobi/androidcloud/lib/phone/a;

    .line 114
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    iget-object v0, v0, Lmobi/androidcloud/lib/wire/control/d;->kl:Lmobi/androidcloud/lib/phone/a;

    goto :goto_8
.end method

.method public jr()I
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_9

    .line 140
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    iget v0, v0, Lmobi/androidcloud/lib/wire/control/a;->kn:I

    .line 142
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    iget v0, v0, Lmobi/androidcloud/lib/wire/control/d;->kn:I

    goto :goto_8
.end method

.method public js()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_9

    .line 168
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    iget-object v0, v0, Lmobi/androidcloud/lib/wire/control/a;->ko:Ljava/lang/String;

    .line 170
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    iget-object v0, v0, Lmobi/androidcloud/lib/wire/control/d;->ko:Ljava/lang/String;

    goto :goto_8
.end method

.method public jt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_9

    .line 280
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    iget-object v0, v0, Lmobi/androidcloud/lib/wire/control/a;->kv:Ljava/lang/String;

    .line 282
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    iget-object v0, v0, Lmobi/androidcloud/lib/wire/control/d;->kv:Ljava/lang/String;

    goto :goto_8
.end method

.method public ju()Lmobi/androidcloud/lib/wire/control/a$a;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_9

    .line 294
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    iget-object v0, v0, Lmobi/androidcloud/lib/wire/control/a;->kw:Lmobi/androidcloud/lib/wire/control/a$a;

    .line 296
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    iget-object v0, v0, Lmobi/androidcloud/lib/wire/control/d;->kw:Lmobi/androidcloud/lib/wire/control/a$a;

    goto :goto_8
.end method

.method public jv()Ljava/lang/String;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_9

    .line 350
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    iget-object v0, v0, Lmobi/androidcloud/lib/wire/control/a;->kA:Ljava/lang/String;

    .line 352
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    iget-object v0, v0, Lmobi/androidcloud/lib/wire/control/d;->kA:Ljava/lang/String;

    goto :goto_8
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_9

    .line 147
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iv:Lmobi/androidcloud/lib/wire/control/a;

    iput-object p1, v0, Lmobi/androidcloud/lib/wire/control/a;->url:Ljava/lang/String;

    .line 150
    :goto_8
    return-void

    .line 149
    :cond_9
    iget-object v0, p0, Lmobi/androidcloud/lib/net/k;->iw:Lmobi/androidcloud/lib/wire/control/d;

    iput-object p1, v0, Lmobi/androidcloud/lib/wire/control/d;->url:Ljava/lang/String;

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 402
    invoke-virtual {p0}, Lmobi/androidcloud/lib/net/k;->jn()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 403
    invoke-virtual {p0}, Lmobi/androidcloud/lib/net/k;->jo()Lmobi/androidcloud/lib/wire/control/a;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/androidcloud/lib/wire/control/a;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    :goto_e
    return-object v0

    .line 404
    :cond_f
    invoke-virtual {p0}, Lmobi/androidcloud/lib/net/k;->jm()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 405
    invoke-virtual {p0}, Lmobi/androidcloud/lib/net/k;->jp()Lmobi/androidcloud/lib/wire/control/d;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/androidcloud/lib/wire/control/d;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 407
    :cond_1e
    const-string v0, "EmptySuperChatMessage"

    goto :goto_e
.end method
