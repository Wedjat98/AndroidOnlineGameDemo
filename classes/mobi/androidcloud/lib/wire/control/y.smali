.class public final Lmobi/androidcloud/lib/wire/control/y;
.super Lmobi/androidcloud/lib/wire/control/M;
.source "SourceFile"


# instance fields
.field private kM:I

.field private kN:I

.field private kO:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 5

    .prologue
    .line 16
    invoke-direct {p0}, Lmobi/androidcloud/lib/wire/control/M;-><init>()V

    .line 18
    iput p1, p0, Lmobi/androidcloud/lib/wire/control/y;->kM:I

    .line 19
    iput p2, p0, Lmobi/androidcloud/lib/wire/control/y;->kN:I

    .line 21
    if-nez p3, :cond_e

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lmobi/androidcloud/lib/wire/control/y;->kO:Ljava/lang/String;

    .line 25
    :goto_d
    return-void

    .line 24
    :cond_e
    iput-object p3, p0, Lmobi/androidcloud/lib/wire/control/y;->kO:Ljava/lang/String;

    goto :goto_d
.end method


# virtual methods
.method public getEventType()I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lmobi/androidcloud/lib/wire/control/y;->kM:I

    return v0
.end method

.method public kp()I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lmobi/androidcloud/lib/wire/control/y;->kN:I

    return v0
.end method

.method public kq()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/y;->kO:Ljava/lang/String;

    return-object v0
.end method
