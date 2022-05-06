.class public final Lmobi/androidcloud/lib/wire/control/A;
.super Lmobi/androidcloud/lib/wire/control/M;
.source "SourceFile"


# instance fields
.field public kI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lmobi/androidcloud/lib/wire/control/M;-><init>()V

    .line 13
    const-string v0, "UDP"

    iput-object v0, p0, Lmobi/androidcloud/lib/wire/control/A;->kI:Ljava/lang/String;

    .line 20
    return-void
.end method
