.class public final Lmobi/androidcloud/lib/wire/control/K;
.super Lmobi/androidcloud/lib/wire/control/M;
.source "SourceFile"


# instance fields
.field public final kW:Ljava/lang/String;

.field public final kX:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0}, Lmobi/androidcloud/lib/wire/control/M;-><init>()V

    .line 11
    iput-object p1, p0, Lmobi/androidcloud/lib/wire/control/K;->kW:Ljava/lang/String;

    .line 12
    iput p2, p0, Lmobi/androidcloud/lib/wire/control/K;->kX:I

    .line 13
    return-void
.end method
