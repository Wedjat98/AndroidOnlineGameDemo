.class public final Lmobi/androidcloud/lib/wire/control/k;
.super Lmobi/androidcloud/lib/wire/control/M;
.source "SourceFile"


# instance fields
.field public fZ:Ljava/lang/String;

.field public kG:I

.field public msgId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .registers 5

    .prologue
    .line 10
    invoke-direct {p0}, Lmobi/androidcloud/lib/wire/control/M;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lmobi/androidcloud/lib/wire/control/k;->kG:I

    .line 11
    iput p1, p0, Lmobi/androidcloud/lib/wire/control/k;->msgId:I

    .line 12
    iput-object p2, p0, Lmobi/androidcloud/lib/wire/control/k;->fZ:Ljava/lang/String;

    .line 13
    iput p3, p0, Lmobi/androidcloud/lib/wire/control/k;->kG:I

    .line 14
    return-void
.end method
