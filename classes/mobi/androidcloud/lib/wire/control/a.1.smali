.class public final Lmobi/androidcloud/lib/wire/control/a;
.super Lmobi/androidcloud/lib/wire/control/M;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/androidcloud/lib/wire/control/a$a;
    }
.end annotation


# instance fields
.field public kA:Ljava/lang/String;

.field public kB:I

.field public kC:Z

.field public kl:Lmobi/androidcloud/lib/phone/a;

.field public km:[Lmobi/androidcloud/lib/phone/a;

.field public kn:I

.field public ko:Ljava/lang/String;

.field public kp:Ljava/lang/String;

.field public kq:Ljava/lang/String;

.field public kr:Ljava/lang/String;

.field public ks:I

.field public kt:I

.field public ku:Ljava/lang/String;

.field public kv:Ljava/lang/String;

.field public kw:Lmobi/androidcloud/lib/wire/control/a$a;

.field public kx:I

.field public ky:Z

.field public kz:Z

.field public length:I

.field public message:Ljava/lang/String;

.field public msgId:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 97
    invoke-direct {p0}, Lmobi/androidcloud/lib/wire/control/M;-><init>()V

    .line 20
    new-instance v0, Lmobi/androidcloud/lib/phone/a;

    const-string v1, "us"

    const-string v2, "You forgot to initialize Chat from field"

    invoke-direct {v0, v1, v2}, Lmobi/androidcloud/lib/phone/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kl:Lmobi/androidcloud/lib/phone/a;

    .line 45
    iput v3, p0, Lmobi/androidcloud/lib/wire/control/a;->kn:I

    .line 56
    iput v3, p0, Lmobi/androidcloud/lib/wire/control/a;->length:I

    .line 58
    iput v3, p0, Lmobi/androidcloud/lib/wire/control/a;->ks:I

    .line 60
    iput v3, p0, Lmobi/androidcloud/lib/wire/control/a;->kt:I

    .line 79
    iput v3, p0, Lmobi/androidcloud/lib/wire/control/a;->kx:I

    .line 83
    iput-boolean v4, p0, Lmobi/androidcloud/lib/wire/control/a;->ky:Z

    .line 86
    iput-boolean v4, p0, Lmobi/androidcloud/lib/wire/control/a;->kz:Z

    .line 92
    iput v3, p0, Lmobi/androidcloud/lib/wire/control/a;->kB:I

    .line 94
    iput-boolean v4, p0, Lmobi/androidcloud/lib/wire/control/a;->kC:Z

    .line 98
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 102
    instance-of v0, p1, Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_36

    move-object v0, p1

    .line 103
    check-cast v0, Lmobi/androidcloud/lib/wire/control/a;

    .line 104
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/a;->kl:Lmobi/androidcloud/lib/phone/a;

    if-nez v1, :cond_39

    iget-object v1, v0, Lmobi/androidcloud/lib/wire/control/a;->kl:Lmobi/androidcloud/lib/phone/a;

    if-nez v1, :cond_37

    move v1, v2

    .line 106
    :goto_12
    iget-object v4, p0, Lmobi/androidcloud/lib/wire/control/a;->message:Ljava/lang/String;

    if-nez v4, :cond_44

    iget-object v4, v0, Lmobi/androidcloud/lib/wire/control/a;->message:Ljava/lang/String;

    if-nez v4, :cond_42

    move v4, v2

    .line 108
    :goto_1b
    invoke-super {p0, p1}, Lmobi/androidcloud/lib/wire/control/M;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    iget v5, p0, Lmobi/androidcloud/lib/wire/control/a;->msgId:I

    iget v6, v0, Lmobi/androidcloud/lib/wire/control/a;->msgId:I

    if-ne v5, v6, :cond_36

    iget-object v5, p0, Lmobi/androidcloud/lib/wire/control/a;->km:[Lmobi/androidcloud/lib/phone/a;

    iget-object v0, v0, Lmobi/androidcloud/lib/wire/control/a;->km:[Lmobi/androidcloud/lib/phone/a;

    invoke-static {v5, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    if-eqz v1, :cond_36

    if-eqz v4, :cond_36

    move v3, v2

    .line 112
    :cond_36
    return v3

    :cond_37
    move v1, v3

    .line 104
    goto :goto_12

    :cond_39
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/a;->kl:Lmobi/androidcloud/lib/phone/a;

    iget-object v4, v0, Lmobi/androidcloud/lib/wire/control/a;->kl:Lmobi/androidcloud/lib/phone/a;

    invoke-virtual {v1, v4}, Lmobi/androidcloud/lib/phone/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_12

    :cond_42
    move v4, v3

    .line 106
    goto :goto_1b

    :cond_44
    iget-object v4, p0, Lmobi/androidcloud/lib/wire/control/a;->message:Ljava/lang/String;

    iget-object v5, v0, Lmobi/androidcloud/lib/wire/control/a;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1b
.end method
