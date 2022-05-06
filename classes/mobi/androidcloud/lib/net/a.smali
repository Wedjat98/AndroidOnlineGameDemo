.class public Lmobi/androidcloud/lib/net/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmobi/androidcloud/lib/net/f;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static fK:Lmobi/androidcloud/lib/phone/a;

.field private static hP:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile hQ:Ljava/lang/String;

.field private static hR:Lmobi/androidcloud/lib/net/a;

.field private static hS:Z

.field private static volatile running:Z


# instance fields
.field private hT:J

.field private hU:Ljava/lang/String;

.field public hV:J

.field private volatile hW:Z

.field private hX:Ljava/net/Socket;

.field private volatile hY:Lmobi/androidcloud/lib/net/transport/i;

.field private volatile hZ:Lmobi/androidcloud/app/ptt/client/a;

.field private ia:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lmobi/androidcloud/lib/net/a;->hP:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    const-class v0, Lmobi/androidcloud/lib/net/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lmobi/androidcloud/lib/net/a;->hQ:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lmobi/androidcloud/lib/net/a;->running:Z

    .line 39
    new-instance v0, Lmobi/androidcloud/lib/net/a;

    invoke-direct {v0}, Lmobi/androidcloud/lib/net/a;-><init>()V

    sput-object v0, Lmobi/androidcloud/lib/net/a;->hR:Lmobi/androidcloud/lib/net/a;

    .line 40
    sput-boolean v1, Lmobi/androidcloud/lib/net/a;->hS:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/androidcloud/lib/net/a;->hT:J

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "myAndroidId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/androidcloud/lib/net/a;->hU:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/androidcloud/lib/net/a;->hW:Z

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lmobi/androidcloud/lib/net/a;->ia:Ljava/util/concurrent/ExecutorService;

    .line 56
    return-void
.end method

.method static synthetic a(Lmobi/androidcloud/lib/net/a;)Lmobi/androidcloud/lib/net/transport/i;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lmobi/androidcloud/lib/net/a;->hY:Lmobi/androidcloud/lib/net/transport/i;

    return-object v0
.end method

.method private a(Lmobi/tikl/wire/control/a$O;)V
    .registers 4

    .prologue
    .line 450
    const/4 v0, 0x1

    sput-boolean v0, Lmobi/androidcloud/lib/net/a;->hS:Z

    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/androidcloud/lib/net/a;->hT:J

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 455
    return-void
.end method

.method private a(Lmobi/tikl/wire/control/a$ah;)V
    .registers 3

    .prologue
    .line 468
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    .line 470
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ah;->zt()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 471
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    .line 472
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->hJ()V

    .line 474
    :cond_f
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lmobi/androidcloud/lib/wire/control/a;)V
    .registers 3

    .prologue
    .line 477
    new-instance v0, Lmobi/androidcloud/lib/net/k;

    invoke-direct {v0, p1}, Lmobi/androidcloud/lib/net/k;-><init>(Lmobi/androidcloud/lib/wire/control/a;)V

    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/net/a;->f(Lmobi/androidcloud/lib/net/k;)V

    .line 478
    return-void
.end method

.method private b(Lmobi/androidcloud/lib/wire/control/d;)V
    .registers 3

    .prologue
    .line 481
    new-instance v0, Lmobi/androidcloud/lib/net/k;

    invoke-direct {v0, p1}, Lmobi/androidcloud/lib/net/k;-><init>(Lmobi/androidcloud/lib/wire/control/d;)V

    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/net/a;->f(Lmobi/androidcloud/lib/net/k;)V

    .line 482
    return-void
.end method

.method private b(Lmobi/androidcloud/lib/wire/control/f;)V
    .registers 4

    .prologue
    .line 578
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received Chatroom Invite AckS for chatId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lmobi/androidcloud/lib/wire/control/f;->fZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lmobi/androidcloud/lib/wire/control/f;->kG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with msgId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lmobi/androidcloud/lib/wire/control/f;->msgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 582
    iget v0, p1, Lmobi/androidcloud/lib/wire/control/f;->kG:I

    if-gez v0, :cond_30

    .line 583
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->hO()V

    .line 588
    :goto_2f
    return-void

    .line 585
    :cond_30
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    .line 586
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    iget-object v1, p1, Lmobi/androidcloud/lib/wire/control/f;->fZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkray/arcvoice/client/b;->H(Ljava/lang/String;)V

    goto :goto_2f
.end method

.method private b(Lmobi/androidcloud/lib/wire/control/k;)V
    .registers 4

    .prologue
    .line 601
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received Chatroom LeaveAckS for chatroom "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lmobi/androidcloud/lib/wire/control/k;->fZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lmobi/androidcloud/lib/wire/control/k;->kG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with msgId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lmobi/androidcloud/lib/wire/control/k;->msgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 605
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    iget-object v1, p1, Lmobi/androidcloud/lib/wire/control/k;->fZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkray/arcvoice/client/b;->I(Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method private b(Lmobi/tikl/wire/control/a$ap;)V
    .registers 6

    .prologue
    .line 459
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    const-string v0, "handleSessionResp {}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ap;->jQ()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lmobi/androidcloud/lib/net/a;->hZ:Lmobi/androidcloud/app/ptt/client/a;

    if-eqz v0, :cond_21

    .line 462
    iget-object v0, p0, Lmobi/androidcloud/lib/net/a;->hZ:Lmobi/androidcloud/app/ptt/client/a;

    invoke-virtual {v0, p1}, Lmobi/androidcloud/app/ptt/client/a;->a(Lmobi/tikl/wire/control/a$ap;)V

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/androidcloud/lib/net/a;->hZ:Lmobi/androidcloud/app/ptt/client/a;

    .line 465
    :cond_21
    return-void
.end method

.method private b(Lmobi/tikl/wire/control/a$e;)V
    .registers 4

    .prologue
    .line 505
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received Chat Message Ack from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$e;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$e;->oY()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with msgId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$e;->getMsgId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 508
    sget-object v0, Lmobi/androidcloud/lib/im/c;->hi:Lmobi/androidcloud/lib/im/c;

    invoke-virtual {v0, p1}, Lmobi/androidcloud/lib/im/c;->a(Lmobi/tikl/wire/control/a$e;)V

    .line 509
    return-void
.end method

.method private b(Lmobi/tikl/wire/control/a$f;)V
    .registers 4

    .prologue
    .line 498
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received Chat Message ServerAck for msgId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$f;->getMsgId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 501
    sget-object v0, Lmobi/androidcloud/lib/im/c;->hi:Lmobi/androidcloud/lib/im/c;

    invoke-virtual {v0, p1}, Lmobi/androidcloud/lib/im/c;->a(Lmobi/tikl/wire/control/a$f;)V

    .line 502
    return-void
.end method

.method private c(Lmobi/androidcloud/lib/wire/control/L;)V
    .registers 3

    .prologue
    .line 512
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    .line 513
    sget-object v0, Lmobi/androidcloud/lib/im/n;->hI:Lmobi/androidcloud/lib/im/n;

    invoke-virtual {v0, p1}, Lmobi/androidcloud/lib/im/n;->b(Lmobi/androidcloud/lib/wire/control/L;)V

    .line 514
    return-void
.end method

.method private f(Lmobi/androidcloud/lib/net/k;)V
    .registers 5

    .prologue
    .line 485
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received Super Chat Message from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->jq()Lmobi/androidcloud/lib/phone/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with msgId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lmobi/androidcloud/lib/net/k;->getMsgId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    :try_start_1e
    sget-object v0, Lmobi/androidcloud/lib/im/c;->hi:Lmobi/androidcloud/lib/im/c;

    invoke-virtual {v0, p1}, Lmobi/androidcloud/lib/im/c;->a(Lmobi/androidcloud/lib/net/k;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_24

    .line 494
    :goto_23
    return-void

    .line 490
    :catch_24
    move-exception v0

    .line 491
    sget-object v1, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while handing chat message.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_23
.end method

.method public static iK()Lmobi/androidcloud/lib/net/a;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lmobi/androidcloud/lib/net/a;->hR:Lmobi/androidcloud/lib/net/a;

    return-object v0
.end method

.method private iL()V
    .registers 6

    .prologue
    const v4, 0x1d4c0

    const/4 v1, 0x0

    .line 64
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lmobi/androidcloud/lib/net/a;->hX:Ljava/net/Socket;

    if-eqz v0, :cond_11

    .line 69
    :try_start_a
    iget-object v0, p0, Lmobi/androidcloud/lib/net/a;->hX:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_47
    .catchall {:try_start_a .. :try_end_f} :catchall_4d

    .line 74
    iput-object v1, p0, Lmobi/androidcloud/lib/net/a;->hX:Ljava/net/Socket;

    .line 80
    :cond_11
    :goto_11
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lmobi/androidcloud/lib/net/a;->ia:Ljava/util/concurrent/ExecutorService;

    .line 82
    invoke-static {}, Lmobi/androidcloud/lib/net/i;->jh()V

    .line 84
    invoke-direct {p0}, Lmobi/androidcloud/lib/net/a;->iX()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 85
    invoke-static {}, Lmobi/androidcloud/lib/net/i;->jk()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmobi/androidcloud/lib/net/i;->jl()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Lcom/google/protobuf/d;->b(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lmobi/androidcloud/lib/net/a;->hX:Ljava/net/Socket;

    .line 87
    new-instance v0, Lmobi/androidcloud/lib/net/g;

    iget-object v1, p0, Lmobi/androidcloud/lib/net/a;->hX:Ljava/net/Socket;

    new-instance v2, Lmobi/androidcloud/lib/log/a;

    sget-object v3, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    invoke-direct {v2, v3}, Lmobi/androidcloud/lib/log/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v4}, Lmobi/androidcloud/lib/net/g;-><init>(Ljava/net/Socket;Lmobi/androidcloud/lib/log/a;I)V

    iput-object v0, p0, Lmobi/androidcloud/lib/net/a;->hY:Lmobi/androidcloud/lib/net/transport/i;

    .line 96
    :goto_40
    iget-object v0, p0, Lmobi/androidcloud/lib/net/a;->hY:Lmobi/androidcloud/lib/net/transport/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/net/transport/i;->q(Z)Z

    .line 98
    return-void

    .line 72
    :catch_47
    move-exception v0

    :try_start_48
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_4d

    .line 74
    iput-object v1, p0, Lmobi/androidcloud/lib/net/a;->hX:Ljava/net/Socket;

    goto :goto_11

    :catchall_4d
    move-exception v0

    iput-object v1, p0, Lmobi/androidcloud/lib/net/a;->hX:Ljava/net/Socket;

    throw v0

    .line 90
    :cond_51
    invoke-static {}, Lmobi/androidcloud/lib/net/i;->jk()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmobi/androidcloud/lib/net/i;->jl()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/d;->b(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lmobi/androidcloud/lib/net/a;->hX:Ljava/net/Socket;

    .line 92
    new-instance v0, Lmobi/androidcloud/lib/net/transport/h;

    iget-object v1, p0, Lmobi/androidcloud/lib/net/a;->hX:Ljava/net/Socket;

    new-instance v2, Lmobi/androidcloud/lib/log/a;

    sget-object v3, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    invoke-direct {v2, v3}, Lmobi/androidcloud/lib/log/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v4}, Lmobi/androidcloud/lib/net/transport/h;-><init>(Ljava/net/Socket;Lmobi/androidcloud/lib/log/a;I)V

    iput-object v0, p0, Lmobi/androidcloud/lib/net/a;->hY:Lmobi/androidcloud/lib/net/transport/i;

    goto :goto_40
.end method

.method private iM()V
    .registers 2

    .prologue
    .line 103
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    .line 110
    monitor-enter p0

    .line 111
    :try_start_3
    iget-object v0, p0, Lmobi/androidcloud/lib/net/a;->hY:Lmobi/androidcloud/lib/net/transport/i;

    if-eqz v0, :cond_c

    .line 112
    iget-object v0, p0, Lmobi/androidcloud/lib/net/a;->hY:Lmobi/androidcloud/lib/net/transport/i;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/net/transport/i;->shutDown()V

    .line 115
    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private iO()Lmobi/tikl/wire/control/a$av$a;
    .registers 5

    .prologue
    .line 149
    invoke-static {}, Lmobi/tikl/wire/control/a$av;->JE()Lmobi/tikl/wire/control/a$av$a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$av$a;->bL(Ljava/lang/String;)Lmobi/tikl/wire/control/a$av$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmobi/tikl/wire/control/a$av$a;->x(J)Lmobi/tikl/wire/control/a$av$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$av$a;->bL(I)Lmobi/tikl/wire/control/a$av$a;

    move-result-object v0

    .line 153
    return-object v0
.end method

.method private iR()V
    .registers 5

    .prologue
    .line 203
    iget-wide v0, p0, Lmobi/androidcloud/lib/net/a;->hT:J

    const-wide/32 v2, 0x75300

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    .line 204
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    .line 206
    invoke-direct {p0}, Lmobi/androidcloud/lib/net/a;->iM()V

    .line 214
    :goto_13
    return-void

    .line 212
    :cond_14
    invoke-direct {p0}, Lmobi/androidcloud/lib/net/a;->iS()V

    .line 213
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    goto :goto_13
.end method

.method private iS()V
    .registers 2

    .prologue
    .line 218
    new-instance v0, Lmobi/androidcloud/lib/wire/control/C;

    invoke-direct {v0}, Lmobi/androidcloud/lib/wire/control/C;-><init>()V

    .line 222
    invoke-virtual {p0, v0}, Lmobi/androidcloud/lib/net/a;->b(Lmobi/androidcloud/lib/wire/control/M;)V

    .line 223
    return-void
.end method

.method private iU()V
    .registers 5

    .prologue
    .line 306
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    .line 310
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/androidcloud/lib/net/a;->hT:J

    .line 312
    const/4 v0, 0x0

    sput-boolean v0, Lmobi/androidcloud/lib/net/a;->hS:Z

    .line 314
    :goto_b
    sget-boolean v0, Lmobi/androidcloud/lib/net/a;->running:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lmobi/androidcloud/lib/net/a;->hW:Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_11} :catch_44
    .catchall {:try_start_2 .. :try_end_11} :catchall_66

    if-eqz v0, :cond_19

    .line 316
    :try_start_13
    invoke-direct {p0}, Lmobi/androidcloud/lib/net/a;->iL()V

    .line 317
    invoke-virtual {p0}, Lmobi/androidcloud/lib/net/a;->iP()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_5a
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_19} :catch_44
    .catchall {:try_start_13 .. :try_end_19} :catchall_66

    .line 328
    :cond_19
    :try_start_19
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    .line 329
    invoke-direct {p0}, Lmobi/androidcloud/lib/net/a;->iS()V

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/androidcloud/lib/net/a;->hV:J

    .line 333
    :goto_24
    sget-boolean v0, Lmobi/androidcloud/lib/net/a;->running:Z

    if-eqz v0, :cond_125

    iget-boolean v0, p0, Lmobi/androidcloud/lib/net/a;->hW:Z

    if-eqz v0, :cond_125

    .line 336
    iget-object v0, p0, Lmobi/androidcloud/lib/net/a;->hY:Lmobi/androidcloud/lib/net/transport/i;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/net/transport/i;->jw()Lmobi/tikl/wire/control/a$av;

    move-result-object v0

    .line 339
    if-nez v0, :cond_6e

    .line 341
    iget-object v0, p0, Lmobi/androidcloud/lib/net/a;->hY:Lmobi/androidcloud/lib/net/transport/i;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/net/transport/i;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-nez v0, :cond_6a

    .line 342
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    .line 343
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0}, Ljava/net/SocketException;-><init>()V

    throw v0
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_44} :catch_44
    .catchall {:try_start_19 .. :try_end_44} :catchall_66

    .line 424
    :catch_44
    move-exception v0

    :try_start_45
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    .line 431
    sget-object v0, Lmobi/androidcloud/lib/net/a;->hP:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 433
    const/4 v0, 0x0

    sput-boolean v0, Lmobi/androidcloud/lib/net/a;->hS:Z

    .line 434
    invoke-direct {p0}, Lmobi/androidcloud/lib/net/a;->iM()V
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_66

    .line 438
    const-wide/16 v0, 0x3e8

    :try_start_54
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_57} :catch_129
    .catchall {:try_start_54 .. :try_end_57} :catchall_66

    .line 443
    :goto_57
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    .line 444
    :goto_59
    return-void

    .line 319
    :catch_5a
    move-exception v0

    :try_start_5b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 323
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    .line 324
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_65} :catch_44
    .catchall {:try_start_5b .. :try_end_65} :catchall_66

    goto :goto_b

    .line 443
    :catchall_66
    move-exception v0

    sget-object v1, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    throw v0

    .line 346
    :cond_6a
    :try_start_6a
    invoke-direct {p0}, Lmobi/androidcloud/lib/net/a;->iS()V

    goto :goto_24

    .line 355
    :cond_6e
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->HY()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 357
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->HZ()Lmobi/tikl/wire/control/a$O;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/net/a;->a(Lmobi/tikl/wire/control/a$O;)V

    goto :goto_24

    .line 362
    :cond_7c
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->HU()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 364
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->HV()Lmobi/tikl/wire/control/a$ap;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/net/a;->b(Lmobi/tikl/wire/control/a$ap;)V

    goto :goto_24

    .line 365
    :cond_8a
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->HQ()Z

    move-result v1

    if-eqz v1, :cond_98

    .line 367
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->HR()Lmobi/tikl/wire/control/a$ah;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/net/a;->a(Lmobi/tikl/wire/control/a$ah;)V

    goto :goto_24

    .line 369
    :cond_98
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->Ii()Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 371
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->Ij()Lmobi/tikl/wire/control/a$d;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/d;->a(Lmobi/tikl/wire/control/a$d;)Lmobi/androidcloud/lib/wire/control/a;

    move-result-object v1

    .line 374
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->getTimeStamp()J

    move-result-wide v2

    iput-wide v2, v1, Lmobi/androidcloud/lib/wire/control/a;->timeStamp:J

    .line 376
    invoke-direct {p0, v1}, Lmobi/androidcloud/lib/net/a;->b(Lmobi/androidcloud/lib/wire/control/a;)V

    goto/16 :goto_24

    .line 378
    :cond_b1
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->Jm()Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 380
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->Jn()Lmobi/tikl/wire/control/a$i;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/d;->a(Lmobi/tikl/wire/control/a$i;)Lmobi/androidcloud/lib/wire/control/d;

    move-result-object v1

    .line 384
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->getTimeStamp()J

    move-result-wide v2

    iput-wide v2, v1, Lmobi/androidcloud/lib/wire/control/d;->timeStamp:J

    .line 386
    invoke-direct {p0, v1}, Lmobi/androidcloud/lib/net/a;->b(Lmobi/androidcloud/lib/wire/control/d;)V

    goto/16 :goto_24

    .line 388
    :cond_ca
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->Ik()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 390
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->Il()Lmobi/tikl/wire/control/a$e;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/net/a;->b(Lmobi/tikl/wire/control/a$e;)V

    goto/16 :goto_24

    .line 392
    :cond_d9
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->Iq()Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 394
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->Ir()Lmobi/tikl/wire/control/a$f;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/net/a;->b(Lmobi/tikl/wire/control/a$f;)V

    goto/16 :goto_24

    .line 396
    :cond_e8
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->Io()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 398
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->Ip()Lmobi/tikl/wire/control/a$au;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/d;->a(Lmobi/tikl/wire/control/a$au;)Lmobi/androidcloud/lib/wire/control/L;

    move-result-object v0

    .line 400
    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/net/a;->c(Lmobi/androidcloud/lib/wire/control/L;)V

    goto/16 :goto_24

    .line 402
    :cond_fb
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->IO()Z

    move-result v1

    if-eqz v1, :cond_10e

    .line 403
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->IP()Lmobi/tikl/wire/control/a$k;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/d;->a(Lmobi/tikl/wire/control/a$k;)Lmobi/androidcloud/lib/wire/control/f;

    move-result-object v0

    .line 406
    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/net/a;->b(Lmobi/androidcloud/lib/wire/control/f;)V

    goto/16 :goto_24

    .line 408
    :cond_10e
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->IW()Z

    move-result v1

    if-eqz v1, :cond_121

    .line 409
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av;->IX()Lmobi/tikl/wire/control/a$p;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/d;->a(Lmobi/tikl/wire/control/a$p;)Lmobi/androidcloud/lib/wire/control/k;

    move-result-object v0

    .line 411
    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/net/a;->b(Lmobi/androidcloud/lib/wire/control/k;)V

    goto/16 :goto_24

    .line 415
    :cond_121
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;
    :try_end_123
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_123} :catch_44
    .catchall {:try_start_6a .. :try_end_123} :catchall_66

    goto/16 :goto_24

    .line 443
    :cond_125
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    goto/16 :goto_59

    :catch_129
    move-exception v0

    goto/16 :goto_57
.end method

.method private iX()Z
    .registers 2

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(IILjava/lang/String;)V
    .registers 5

    .prologue
    .line 226
    new-instance v0, Lmobi/androidcloud/lib/wire/control/y;

    invoke-direct {v0, p1, p2, p3}, Lmobi/androidcloud/lib/wire/control/y;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lmobi/androidcloud/lib/net/a;->b(Lmobi/androidcloud/lib/wire/control/M;)V

    .line 227
    return-void
.end method

.method public a(Lmobi/androidcloud/lib/wire/control/n;Lmobi/androidcloud/app/ptt/client/a;)V
    .registers 5

    .prologue
    .line 168
    iput-object p2, p0, Lmobi/androidcloud/lib/net/a;->hZ:Lmobi/androidcloud/app/ptt/client/a;

    .line 169
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Saved caller "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmobi/androidcloud/lib/net/a;->hZ:Lmobi/androidcloud/app/ptt/client/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p0, p1}, Lmobi/androidcloud/lib/net/a;->b(Lmobi/androidcloud/lib/wire/control/M;)V

    .line 171
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public declared-synchronized a(Lmobi/tikl/wire/control/a$av;)V
    .registers 4

    .prologue
    .line 233
    monitor-enter p0

    :try_start_1
    new-instance v0, Lmobi/androidcloud/lib/net/b;

    invoke-direct {v0, p0, p1}, Lmobi/androidcloud/lib/net/b;-><init>(Lmobi/androidcloud/lib/net/a;Lmobi/tikl/wire/control/a$av;)V

    .line 253
    iget-object v1, p0, Lmobi/androidcloud/lib/net/a;->ia:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 254
    monitor-exit p0

    return-void

    .line 233
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lmobi/androidcloud/lib/wire/control/M;)V
    .registers 4

    .prologue
    .line 258
    monitor-enter p0

    :try_start_1
    new-instance v0, Lmobi/androidcloud/lib/net/c;

    invoke-direct {v0, p0, p1}, Lmobi/androidcloud/lib/net/c;-><init>(Lmobi/androidcloud/lib/net/a;Lmobi/androidcloud/lib/wire/control/M;)V

    .line 281
    iget-object v1, p0, Lmobi/androidcloud/lib/net/a;->ia:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 282
    monitor-exit p0

    return-void

    .line 258
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Lmobi/androidcloud/lib/phone/a;)V
    .registers 3

    .prologue
    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/androidcloud/lib/net/a;->hW:Z

    .line 523
    sput-object p1, Lmobi/androidcloud/lib/net/a;->fK:Lmobi/androidcloud/lib/phone/a;

    .line 524
    return-void
.end method

.method public iN()V
    .registers 4

    .prologue
    .line 120
    invoke-static {}, Lmobi/tikl/wire/control/a$ag;->DI()Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    .line 122
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bD(I)Lmobi/tikl/wire/control/a$ag$a;

    .line 123
    sget-object v1, Lmobi/androidcloud/lib/net/a;->fK:Lmobi/androidcloud/lib/phone/a;

    invoke-static {v1}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ag$a;->aA(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ag$a;

    .line 125
    sget-object v1, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v1}, Lcom/talkray/arcvoice/client/b;->hM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bu(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/androidcloud/lib/net/a;->hU:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Version:1.13"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bi(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 127
    const-string v1, "1.13"

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bp(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 128
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bF(I)Lmobi/tikl/wire/control/a$ag$a;

    .line 130
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bj(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 131
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bk(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 132
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bl(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 133
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bm(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 134
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bn(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 135
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bE(I)Lmobi/tikl/wire/control/a$ag$a;

    .line 136
    const-string v1, "android"

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bo(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 138
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ag$a;->DO()Lmobi/tikl/wire/control/a$ag;

    move-result-object v0

    .line 140
    sget-object v1, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Lmobi/androidcloud/lib/net/a;->iO()Lmobi/tikl/wire/control/a$av$a;

    move-result-object v1

    .line 143
    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$av$a;->d(Lmobi/tikl/wire/control/a$ag;)Lmobi/tikl/wire/control/a$av$a;

    .line 145
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$av$a;->JK()Lmobi/tikl/wire/control/a$av;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/androidcloud/lib/net/a;->a(Lmobi/tikl/wire/control/a$av;)V

    .line 146
    return-void
.end method

.method public iP()V
    .registers 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lmobi/androidcloud/lib/net/a;->iN()V

    .line 158
    return-void
.end method

.method public declared-synchronized iQ()V
    .registers 3

    .prologue
    .line 177
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lmobi/androidcloud/lib/net/a;->hS:Z

    if-eqz v0, :cond_28

    .line 180
    sget v0, Lmobi/androidcloud/lib/net/ConnectivityReceiver;->hM:I

    if-lez v0, :cond_28

    .line 181
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Checking Connectivity connection may have broken old: 0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " new:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmobi/androidcloud/lib/net/ConnectivityReceiver;->hM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shutting down"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-direct {p0}, Lmobi/androidcloud/lib/net/a;->iM()V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_2e

    .line 199
    :goto_26
    monitor-exit p0

    return-void

    .line 192
    :cond_28
    :try_start_28
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    .line 196
    invoke-direct {p0}, Lmobi/androidcloud/lib/net/a;->iR()V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_2e

    goto :goto_26

    .line 177
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public iT()V
    .registers 5

    .prologue
    .line 287
    :goto_0
    sget-boolean v0, Lmobi/androidcloud/lib/net/a;->running:Z

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lmobi/androidcloud/lib/net/a;->hW:Z

    if-eqz v0, :cond_34

    .line 288
    invoke-direct {p0}, Lmobi/androidcloud/lib/net/a;->iU()V

    .line 292
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 293
    sget-object v1, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Will try server in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " milliseconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    int-to-long v0, v0

    :try_start_2c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_0

    .line 296
    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 301
    :cond_34
    return-void
.end method

.method public iV()V
    .registers 2

    .prologue
    .line 517
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    .line 518
    invoke-direct {p0}, Lmobi/androidcloud/lib/net/a;->iM()V

    .line 519
    return-void
.end method

.method public iW()V
    .registers 2

    .prologue
    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/androidcloud/lib/net/a;->hW:Z

    .line 528
    invoke-direct {p0}, Lmobi/androidcloud/lib/net/a;->iM()V

    .line 529
    return-void
.end method

.method public iY()V
    .registers 4

    .prologue
    .line 540
    const/16 v0, 0x14

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "xy"

    invoke-virtual {p0, v0, v1, v2}, Lmobi/androidcloud/lib/net/a;->a(IILjava/lang/String;)V

    .line 542
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 546
    :goto_a
    return-void

    .line 544
    :catch_b
    move-exception v0

    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    goto :goto_a
.end method

.method public iZ()V
    .registers 4

    .prologue
    .line 551
    const/16 v0, 0x15

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "xy"

    invoke-virtual {p0, v0, v1, v2}, Lmobi/androidcloud/lib/net/a;->a(IILjava/lang/String;)V

    .line 553
    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 557
    :goto_a
    return-void

    .line 555
    :catch_b
    move-exception v0

    sget-object v0, Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;

    goto :goto_a
.end method
