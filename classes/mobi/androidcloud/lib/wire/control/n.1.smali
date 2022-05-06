.class public final Lmobi/androidcloud/lib/wire/control/n;
.super Lmobi/androidcloud/lib/wire/control/M;
.source "SourceFile"


# instance fields
.field public fZ:Ljava/lang/String;

.field public kJ:Lmobi/androidcloud/lib/phone/a;


# direct methods
.method public constructor <init>(Lmobi/androidcloud/lib/phone/a;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 15
    invoke-direct {p0}, Lmobi/androidcloud/lib/wire/control/M;-><init>()V

    .line 9
    new-instance v0, Lmobi/androidcloud/lib/phone/a;

    const-string v1, "us"

    const-string v2, "You forgot to initialize SessionReqM.Source"

    invoke-direct {v0, v1, v2}, Lmobi/androidcloud/lib/phone/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/androidcloud/lib/wire/control/n;->kJ:Lmobi/androidcloud/lib/phone/a;

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/androidcloud/lib/wire/control/n;->fZ:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lmobi/androidcloud/lib/wire/control/n;->kJ:Lmobi/androidcloud/lib/phone/a;

    .line 17
    iput-object p2, p0, Lmobi/androidcloud/lib/wire/control/n;->fZ:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    .line 22
    instance-of v0, p1, Lmobi/androidcloud/lib/wire/control/n;

    if-eqz v0, :cond_23

    move-object v0, p1

    .line 23
    check-cast v0, Lmobi/androidcloud/lib/wire/control/n;

    .line 24
    invoke-super {p0, p1}, Lmobi/androidcloud/lib/wire/control/M;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/n;->kJ:Lmobi/androidcloud/lib/phone/a;

    iget-object v2, v0, Lmobi/androidcloud/lib/wire/control/n;->kJ:Lmobi/androidcloud/lib/phone/a;

    invoke-virtual {v1, v2}, Lmobi/androidcloud/lib/phone/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/n;->fZ:Ljava/lang/String;

    iget-object v0, v0, Lmobi/androidcloud/lib/wire/control/n;->fZ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 26
    const/4 v0, 0x1

    .line 29
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lmobi/androidcloud/lib/wire/control/M;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/n;->kJ:Lmobi/androidcloud/lib/phone/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", chatroomId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/n;->fZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
