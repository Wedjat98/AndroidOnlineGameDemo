.class public final Lmobi/androidcloud/lib/im/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public hm:Lmobi/androidcloud/lib/net/k;

.field public transient hn:Z

.field public transient ho:Z

.field public hp:Ljava/lang/String;

.field public hq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lmobi/androidcloud/lib/im/f;->hn:Z

    .line 21
    iput-boolean v0, p0, Lmobi/androidcloud/lib/im/f;->ho:Z

    .line 23
    iput-object v1, p0, Lmobi/androidcloud/lib/im/f;->hp:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lmobi/androidcloud/lib/im/f;->hq:Ljava/lang/String;

    .line 25
    if-eqz p1, :cond_1c

    .line 29
    new-instance v0, Lmobi/androidcloud/lib/net/k;

    new-instance v1, Lmobi/androidcloud/lib/wire/control/d;

    invoke-direct {v1}, Lmobi/androidcloud/lib/wire/control/d;-><init>()V

    invoke-direct {v0, v1}, Lmobi/androidcloud/lib/net/k;-><init>(Lmobi/androidcloud/lib/wire/control/d;)V

    iput-object v0, p0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    .line 33
    :goto_1b
    return-void

    .line 31
    :cond_1c
    new-instance v0, Lmobi/androidcloud/lib/net/k;

    new-instance v1, Lmobi/androidcloud/lib/wire/control/a;

    invoke-direct {v1}, Lmobi/androidcloud/lib/wire/control/a;-><init>()V

    invoke-direct {v0, v1}, Lmobi/androidcloud/lib/net/k;-><init>(Lmobi/androidcloud/lib/wire/control/a;)V

    iput-object v0, p0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    goto :goto_1b
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/net/k;->jn()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 50
    iget-object v0, p0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/net/k;->jo()Lmobi/androidcloud/lib/wire/control/a;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Lmobi/androidcloud/lib/wire/control/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 55
    :goto_12
    return v0

    .line 53
    :cond_13
    iget-object v0, p0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/net/k;->jp()Lmobi/androidcloud/lib/wire/control/d;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p1}, Lmobi/androidcloud/lib/wire/control/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_12
.end method

.method public ix()Z
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/net/k;->jm()Z

    move-result v0

    return v0
.end method

.method public iy()Z
    .registers 3

    .prologue
    .line 41
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->hG()Lmobi/androidcloud/lib/phone/a;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v1}, Lmobi/androidcloud/lib/net/k;->jq()Lmobi/androidcloud/lib/phone/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/androidcloud/lib/phone/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
