.class public Lmobi/androidcloud/app/ptt/client/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private volatile fV:Lmobi/tikl/wire/control/a$ap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lmobi/androidcloud/app/ptt/client/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/androidcloud/app/ptt/client/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/androidcloud/app/ptt/client/a;->fV:Lmobi/tikl/wire/control/a$ap;

    return-void
.end method


# virtual methods
.method public a(Lmobi/tikl/wire/control/a$ap;)V
    .registers 4

    .prologue
    .line 77
    sget-object v0, Lmobi/androidcloud/app/ptt/client/a;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "got resp with session ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ap;->jQ()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    sget-object v0, Lmobi/androidcloud/app/ptt/client/a;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "got resp with session proceed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ap;->Gg()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ap;->Gk()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    sget-object v0, Lmobi/androidcloud/app/ptt/client/a;->TAG:Ljava/lang/String;

    goto :goto_28

    .line 82
    :cond_37
    iput-object p1, p0, Lmobi/androidcloud/app/ptt/client/a;->fV:Lmobi/tikl/wire/control/a$ap;

    .line 83
    return-void
.end method

.method public b(Lmobi/androidcloud/lib/wire/control/n;)Lmobi/tikl/wire/control/a$ap;
    .registers 6

    .prologue
    .line 50
    invoke-static {}, Lmobi/androidcloud/lib/net/a;->iK()Lmobi/androidcloud/lib/net/a;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lmobi/androidcloud/lib/net/a;->a(Lmobi/androidcloud/lib/wire/control/n;Lmobi/androidcloud/app/ptt/client/a;)V

    .line 52
    :try_start_7
    sget-object v0, Lmobi/androidcloud/app/ptt/client/a;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    :goto_a
    const/16 v1, 0x28

    if-ge v0, v1, :cond_29

    .line 55
    iget-object v1, p0, Lmobi/androidcloud/app/ptt/client/a;->fV:Lmobi/tikl/wire/control/a$ap;

    if-eqz v1, :cond_17

    .line 56
    sget-object v0, Lmobi/androidcloud/app/ptt/client/a;->TAG:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lmobi/androidcloud/app/ptt/client/a;->fV:Lmobi/tikl/wire/control/a$ap;

    .line 72
    :goto_16
    return-object v0

    .line 61
    :cond_17
    const/16 v1, 0x8

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x18

    if-ne v0, v1, :cond_21

    .line 64
    :cond_1f
    sget-object v1, Lmobi/androidcloud/app/ptt/client/a;->TAG:Ljava/lang/String;

    .line 67
    :cond_21
    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 69
    :cond_29
    iget-object v0, p0, Lmobi/androidcloud/app/ptt/client/a;->fV:Lmobi/tikl/wire/control/a$ap;
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_2b} :catch_2c

    goto :goto_16

    .line 71
    :catch_2c
    move-exception v0

    sget-object v0, Lmobi/androidcloud/app/ptt/client/a;->TAG:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    goto :goto_16
.end method
