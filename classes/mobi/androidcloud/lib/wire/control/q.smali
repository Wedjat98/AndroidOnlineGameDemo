.class public final Lmobi/androidcloud/lib/wire/control/q;
.super Lmobi/androidcloud/lib/wire/control/M;
.source "SourceFile"


# instance fields
.field public fZ:Ljava/lang/String;

.field public kK:[Lmobi/androidcloud/lib/phone/a;

.field public kL:J

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lmobi/androidcloud/lib/phone/a;J)V
    .registers 6

    .prologue
    .line 16
    invoke-direct {p0}, Lmobi/androidcloud/lib/wire/control/M;-><init>()V

    .line 17
    iput-object p1, p0, Lmobi/androidcloud/lib/wire/control/q;->fZ:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lmobi/androidcloud/lib/wire/control/q;->kK:[Lmobi/androidcloud/lib/phone/a;

    .line 19
    iput-wide p3, p0, Lmobi/androidcloud/lib/wire/control/q;->kL:J

    .line 20
    return-void
.end method
