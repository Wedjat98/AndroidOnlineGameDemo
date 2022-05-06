.class public final Lmobi/androidcloud/lib/net/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ii:Lmobi/androidcloud/lib/phone/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->hG()Lmobi/androidcloud/lib/phone/a;

    move-result-object v0

    iput-object v0, p0, Lmobi/androidcloud/lib/net/e;->ii:Lmobi/androidcloud/lib/phone/a;

    return-void
.end method

.method private a(IZLmobi/androidcloud/lib/phone/a;)Ljava/net/DatagramPacket;
    .registers 6

    .prologue
    .line 54
    invoke-static {}, Lmobi/tikl/wire/control/a$aj;->Et()Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    .line 56
    invoke-static {p3}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$aj$a;->aE(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$aj$a;

    .line 57
    invoke-virtual {v0, p2}, Lmobi/tikl/wire/control/a$aj$a;->J(Z)Lmobi/tikl/wire/control/a$aj$a;

    .line 59
    invoke-static {}, Lmobi/tikl/wire/control/a$ak;->EU()Lmobi/tikl/wire/control/a$ak$a;

    move-result-object v1

    .line 60
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$aj$a;->Ez()Lmobi/tikl/wire/control/a$aj;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$ak$a;->d(Lmobi/tikl/wire/control/a$aj;)Lmobi/tikl/wire/control/a$ak$a;

    .line 62
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$ak$a;->Fa()Lmobi/tikl/wire/control/a$ak;

    move-result-object v0

    .line 64
    invoke-static {p1, v0}, Lmobi/androidcloud/lib/net/transport/d;->a(ILcom/google/protobuf/q;)Ljava/net/DatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method private b(ILmobi/androidcloud/lib/phone/a;)Ljava/net/DatagramPacket;
    .registers 5

    .prologue
    .line 70
    invoke-static {}, Lmobi/tikl/wire/control/a$ai;->Eg()Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    .line 72
    invoke-static {p2}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ai$a;->aC(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ai$a;

    .line 74
    invoke-static {}, Lmobi/tikl/wire/control/a$ak;->EU()Lmobi/tikl/wire/control/a$ak$a;

    move-result-object v1

    .line 75
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ai$a;->Em()Lmobi/tikl/wire/control/a$ai;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$ak$a;->d(Lmobi/tikl/wire/control/a$ai;)Lmobi/tikl/wire/control/a$ak$a;

    .line 77
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$ak$a;->Fa()Lmobi/tikl/wire/control/a$ak;

    move-result-object v0

    .line 79
    invoke-static {p1, v0}, Lmobi/androidcloud/lib/net/transport/d;->a(ILcom/google/protobuf/q;)Ljava/net/DatagramPacket;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public am(I)V
    .registers 5

    .prologue
    .line 45
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->hG()Lmobi/androidcloud/lib/phone/a;

    move-result-object v0

    .line 47
    sget-object v1, Lmobi/androidcloud/lib/session/h;->jX:Lmobi/androidcloud/lib/session/h;

    invoke-direct {p0, p1, v0}, Lmobi/androidcloud/lib/net/e;->b(ILmobi/androidcloud/lib/phone/a;)Ljava/net/DatagramPacket;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/androidcloud/lib/session/h;->send(Ljava/net/DatagramPacket;)V

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Send hangup with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    return-void
.end method

.method public c(IZ)V
    .registers 5

    .prologue
    .line 33
    sget-object v0, Lmobi/androidcloud/lib/session/h;->jX:Lmobi/androidcloud/lib/session/h;

    iget-object v1, p0, Lmobi/androidcloud/lib/net/e;->ii:Lmobi/androidcloud/lib/phone/a;

    invoke-direct {p0, p1, p2, v1}, Lmobi/androidcloud/lib/net/e;->a(IZLmobi/androidcloud/lib/phone/a;)Ljava/net/DatagramPacket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/session/h;->send(Ljava/net/DatagramPacket;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Send heartbeat with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmobi/androidcloud/lib/net/e;->ii:Lmobi/androidcloud/lib/phone/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    return-void
.end method
