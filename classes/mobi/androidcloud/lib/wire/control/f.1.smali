.class public final Lmobi/androidcloud/lib/wire/control/f;
.super Lmobi/androidcloud/lib/wire/control/M;
.source "SourceFile"


# instance fields
.field public fZ:Ljava/lang/String;

.field public kG:I

.field public kH:Lmobi/androidcloud/lib/wire/control/q;

.field public msgId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .registers 5

    .prologue
    .line 13
    invoke-direct {p0}, Lmobi/androidcloud/lib/wire/control/M;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lmobi/androidcloud/lib/wire/control/f;->kG:I

    .line 14
    iput p1, p0, Lmobi/androidcloud/lib/wire/control/f;->msgId:I

    .line 15
    iput-object p2, p0, Lmobi/androidcloud/lib/wire/control/f;->fZ:Ljava/lang/String;

    .line 16
    iput p3, p0, Lmobi/androidcloud/lib/wire/control/f;->kG:I

    .line 17
    return-void
.end method
