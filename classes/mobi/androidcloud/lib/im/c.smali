.class public final enum Lmobi/androidcloud/lib/im/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum hi:Lmobi/androidcloud/lib/im/c;

.field private static final hj:Lmobi/androidcloud/lib/util/b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 23
    new-instance v0, Lmobi/androidcloud/lib/im/c;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lmobi/androidcloud/lib/im/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/androidcloud/lib/im/c;->hi:Lmobi/androidcloud/lib/im/c;

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Lmobi/androidcloud/lib/im/c;

    sget-object v1, Lmobi/androidcloud/lib/im/c;->hi:Lmobi/androidcloud/lib/im/c;

    aput-object v1, v0, v2

    .line 29
    new-instance v0, Lmobi/androidcloud/lib/util/b;

    const/16 v1, 0x6400

    invoke-direct {v0, v1}, Lmobi/androidcloud/lib/util/b;-><init>(I)V

    sput-object v0, Lmobi/androidcloud/lib/im/c;->hj:Lmobi/androidcloud/lib/util/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static K(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 34
    invoke-static {}, Lcom/google/protobuf/d;->E()Ljava/lang/String;

    move-result-object v0

    .line 36
    if-eqz p0, :cond_12

    .line 37
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    .line 38
    invoke-static {p0}, Lcom/google/protobuf/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_12
    return-object v0
.end method

.method private a(Lmobi/androidcloud/lib/net/k;Ljava/lang/String;Ljava/lang/String;)Lmobi/androidcloud/lib/im/f;
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 190
    new-instance v0, Lmobi/androidcloud/lib/im/f;

    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->jm()Z

    move-result v1

    invoke-direct {v0, v1}, Lmobi/androidcloud/lib/im/f;-><init>(Z)V

    .line 191
    iput-object p1, v0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    .line 194
    iget-object v1, v0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->jq()Lmobi/androidcloud/lib/phone/a;

    move-result-object v2

    iget-object v2, v2, Lmobi/androidcloud/lib/phone/a;->iM:Ljava/lang/String;

    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->jq()Lmobi/androidcloud/lib/phone/a;

    move-result-object v3

    iget-object v3, v3, Lmobi/androidcloud/lib/phone/a;->iN:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/d;->a(Ljava/lang/String;Ljava/lang/String;)Lmobi/androidcloud/lib/phone/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/androidcloud/lib/net/k;->d(Lmobi/androidcloud/lib/phone/a;)V

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "building message from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v2}, Lmobi/androidcloud/lib/net/k;->jq()Lmobi/androidcloud/lib/phone/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    iput-object p2, v0, Lmobi/androidcloud/lib/im/f;->hq:Ljava/lang/String;

    .line 220
    iput-object p3, v0, Lmobi/androidcloud/lib/im/f;->hp:Ljava/lang/String;

    .line 223
    iget-object v1, v0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v1}, Lmobi/androidcloud/lib/net/k;->ju()Lmobi/androidcloud/lib/wire/control/a$a;

    move-result-object v1

    if-nez v1, :cond_48

    .line 224
    iget-object v1, v0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    new-instance v2, Lmobi/androidcloud/lib/wire/control/a$a;

    invoke-direct {v2, v4, v5, v4, v5}, Lmobi/androidcloud/lib/wire/control/a$a;-><init>(DD)V

    invoke-virtual {v1, v2}, Lmobi/androidcloud/lib/net/k;->a(Lmobi/androidcloud/lib/wire/control/a$a;)V

    .line 239
    :cond_48
    return-object v0
.end method

.method private b(Lmobi/androidcloud/lib/im/f;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 246
    iget-object v0, p1, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/net/k;->jt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/androidcloud/lib/im/c;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    iput-object v3, p1, Lmobi/androidcloud/lib/im/f;->hq:Ljava/lang/String;

    .line 261
    iget-object v1, p1, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v1}, Lmobi/androidcloud/lib/net/k;->js()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v1, p1, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v1}, Lmobi/androidcloud/lib/net/k;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 271
    iget-object v1, p1, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v1}, Lmobi/androidcloud/lib/net/k;->js()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v2}, Lmobi/androidcloud/lib/net/k;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 273
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received Message Preview Url "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v2}, Lmobi/androidcloud/lib/net/k;->js()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received Message Url "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v2}, Lmobi/androidcloud/lib/net/k;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget-object v1, p1, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v1}, Lmobi/androidcloud/lib/net/k;->js()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6f

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Preview in message...downloading "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v1}, Lmobi/androidcloud/lib/net/k;->js()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iput-object v3, p1, Lmobi/androidcloud/lib/im/f;->hq:Ljava/lang/String;

    .line 291
    new-instance v0, Lmobi/androidcloud/lib/im/g;

    invoke-direct {v0, p1}, Lmobi/androidcloud/lib/im/g;-><init>(Lmobi/androidcloud/lib/im/f;)V

    .line 292
    invoke-virtual {v0}, Lmobi/androidcloud/lib/im/g;->iz()V

    .line 314
    :cond_6e
    :goto_6e
    return-void

    .line 296
    :cond_6f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No preview available..downloading full media "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v2}, Lmobi/androidcloud/lib/net/k;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget-object v1, p1, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v1}, Lmobi/androidcloud/lib/net/k;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 305
    iget-object v1, p1, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-static {v1}, Lmobi/androidcloud/lib/im/i;->c(Lmobi/androidcloud/lib/net/k;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 306
    iput-object v3, p1, Lmobi/androidcloud/lib/im/f;->hp:Ljava/lang/String;

    .line 308
    iput-object v0, p1, Lmobi/androidcloud/lib/im/f;->hq:Ljava/lang/String;

    .line 310
    new-instance v0, Lmobi/androidcloud/lib/im/g;

    invoke-direct {v0, p1}, Lmobi/androidcloud/lib/im/g;-><init>(Lmobi/androidcloud/lib/im/f;)V

    .line 311
    invoke-virtual {v0}, Lmobi/androidcloud/lib/im/g;->iA()V

    goto :goto_6e
.end method

.method private c(Lmobi/androidcloud/lib/im/f;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received chat length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v1}, Lmobi/androidcloud/lib/net/k;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iput-object v2, p1, Lmobi/androidcloud/lib/im/f;->hp:Ljava/lang/String;

    .line 334
    iput-object v2, p1, Lmobi/androidcloud/lib/im/f;->hq:Ljava/lang/String;

    .line 341
    return-void
.end method


# virtual methods
.method public a(ILmobi/androidcloud/lib/phone/a;)V
    .registers 5

    .prologue
    .line 163
    new-instance v0, Lmobi/androidcloud/lib/wire/control/b;

    invoke-direct {v0}, Lmobi/androidcloud/lib/wire/control/b;-><init>()V

    .line 165
    iput p1, v0, Lmobi/androidcloud/lib/wire/control/b;->msgId:I

    .line 166
    sget-object v1, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v1}, Lcom/talkray/arcvoice/client/b;->hG()Lmobi/androidcloud/lib/phone/a;

    move-result-object v1

    iput-object v1, v0, Lmobi/androidcloud/lib/wire/control/b;->kl:Lmobi/androidcloud/lib/phone/a;

    .line 167
    iput-object p2, v0, Lmobi/androidcloud/lib/wire/control/b;->kF:Lmobi/androidcloud/lib/phone/a;

    .line 169
    invoke-static {}, Lmobi/androidcloud/lib/net/a;->iK()Lmobi/androidcloud/lib/net/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/androidcloud/lib/net/a;->b(Lmobi/androidcloud/lib/wire/control/M;)V

    .line 170
    return-void
.end method

.method public declared-synchronized a(Lmobi/androidcloud/lib/net/k;)V
    .registers 5

    .prologue
    .line 53
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->jn()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->jo()Lmobi/androidcloud/lib/wire/control/a;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->jo()Lmobi/androidcloud/lib/wire/control/a;

    move-result-object v0

    iget-object v0, v0, Lmobi/androidcloud/lib/wire/control/a;->km:[Lmobi/androidcloud/lib/phone/a;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_26

    .line 55
    sget-object v0, Lmobi/androidcloud/lib/im/c;->hi:Lmobi/androidcloud/lib/im/c;

    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->getMsgId()I

    move-result v1

    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->jq()Lmobi/androidcloud/lib/phone/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/androidcloud/lib/im/c;->a(ILmobi/androidcloud/lib/phone/a;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_5d

    .line 76
    :goto_24
    monitor-exit p0

    return-void

    .line 61
    :cond_26
    :try_start_26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding chat :id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->getMsgId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new incoming message from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->jv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lmobi/androidcloud/lib/im/c;->a(Lmobi/androidcloud/lib/net/k;Ljava/lang/String;Ljava/lang/String;)Lmobi/androidcloud/lib/im/f;

    move-result-object v0

    .line 73
    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/im/c;->c(Lmobi/androidcloud/lib/im/f;)V

    .line 75
    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/im/c;->b(Lmobi/androidcloud/lib/im/f;)V
    :try_end_5c
    .catchall {:try_start_26 .. :try_end_5c} :catchall_5d

    goto :goto_24

    .line 53
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lmobi/tikl/wire/control/a$e;)V
    .registers 3

    .prologue
    .line 183
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$e;->getMsgId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 184
    monitor-exit p0

    return-void

    .line 183
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lmobi/tikl/wire/control/a$f;)V
    .registers 4

    .prologue
    .line 173
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$f;->getMsgId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    sget-object v1, Lmobi/androidcloud/lib/im/c;->hj:Lmobi/androidcloud/lib/util/b;

    invoke-virtual {v1, v0}, Lmobi/androidcloud/lib/util/b;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 176
    sget-object v1, Lmobi/androidcloud/lib/im/c;->hj:Lmobi/androidcloud/lib/util/b;

    invoke-virtual {v1, v0}, Lmobi/androidcloud/lib/util/b;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/androidcloud/lib/im/j;

    .line 177
    if-eqz v0, :cond_24

    .line 178
    sget-object v1, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/im/j;->iD()Lmobi/androidcloud/lib/im/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/talkray/arcvoice/client/a;->a(Lmobi/androidcloud/lib/im/f;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 180
    :cond_24
    monitor-exit p0

    return-void

    .line 173
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lmobi/androidcloud/lib/net/k;)V
    .registers 4

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->jm()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 89
    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->jp()Lmobi/androidcloud/lib/wire/control/d;

    move-result-object v0

    .line 93
    :goto_b
    invoke-static {}, Lmobi/androidcloud/lib/net/a;->iK()Lmobi/androidcloud/lib/net/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/androidcloud/lib/net/a;->b(Lmobi/androidcloud/lib/wire/control/M;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    .line 94
    monitor-exit p0

    return-void

    .line 91
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->jo()Lmobi/androidcloud/lib/wire/control/a;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    move-result-object v0

    goto :goto_b

    .line 88
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method
