.class final Lmobi/androidcloud/lib/net/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic ib:Lmobi/tikl/wire/control/a$av;

.field private synthetic ic:Lmobi/androidcloud/lib/net/a;


# direct methods
.method constructor <init>(Lmobi/androidcloud/lib/net/a;Lmobi/tikl/wire/control/a$av;)V
    .registers 3

    .prologue
    .line 233
    iput-object p1, p0, Lmobi/androidcloud/lib/net/b;->ic:Lmobi/androidcloud/lib/net/a;

    iput-object p2, p0, Lmobi/androidcloud/lib/net/b;->ib:Lmobi/tikl/wire/control/a$av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 236
    iget-object v0, p0, Lmobi/androidcloud/lib/net/b;->ic:Lmobi/androidcloud/lib/net/a;

    invoke-static {v0}, Lmobi/androidcloud/lib/net/a;->a(Lmobi/androidcloud/lib/net/a;)Lmobi/androidcloud/lib/net/transport/i;

    move-result-object v0

    if-nez v0, :cond_20

    .line 237
    # getter for: Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;
    invoke-static {}, Lmobi/androidcloud/lib/net/a;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transport is NULL..message dropped: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmobi/androidcloud/lib/net/b;->ib:Lmobi/tikl/wire/control/a$av;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :goto_1f
    return-void

    .line 243
    :cond_20
    :try_start_20
    iget-object v0, p0, Lmobi/androidcloud/lib/net/b;->ic:Lmobi/androidcloud/lib/net/a;

    invoke-static {v0}, Lmobi/androidcloud/lib/net/a;->a(Lmobi/androidcloud/lib/net/a;)Lmobi/androidcloud/lib/net/transport/i;

    move-result-object v0

    iget-object v1, p0, Lmobi/androidcloud/lib/net/b;->ib:Lmobi/tikl/wire/control/a$av;

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/net/transport/i;->b(Lmobi/tikl/wire/control/a$av;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_2b} :catch_2c

    goto :goto_1f

    .line 247
    :catch_2c
    move-exception v0

    # getter for: Lmobi/androidcloud/lib/net/a;->TAG:Ljava/lang/String;
    invoke-static {}, Lmobi/androidcloud/lib/net/a;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to write message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmobi/androidcloud/lib/net/b;->ib:Lmobi/tikl/wire/control/a$av;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f
.end method
